//
//  SimpleCalculator.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/2/19.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

import Foundation


/// 这个计算器实现了简单的整数加减乘除和括号功能
/// 使用additive(_ toknes:)函数计算的结合性是有问题的。因为它使用了下面的语法规则：
/// additive -> multiplicative | multiplicative + additive
/// multiplicative -> primary | primary * multiplicative
/// 递归项在右边，会自然的对应右结合。我们真正需要的是左结合。
/// 使用additiveImprove(_ tokens:)函数，可以解决结合性的问题。因为它使用了下面的语法规则：
/// add -> mul (+ mul)*
/// 使用mulitplicativeImprove(_ tokens:)函数，可以解决结合性问题。因为它使用了下面的语法规则:
/// multiplicative -> primary (* primary)*

class SimpleCalculator {
    var script: String
    var lexer: SimpleLexer = SimpleLexer()
    var tokens: SimpleTokenReader?
    
    init(script: String) {
        self.script = script
        tokens = lexer.tokenize(code: script)
    }
    
    
    func evaluate() {
        print("解析: \(script)")
        do {
            let tree = try parse()
            dumpAST(node: tree, indent: "")
            let result = try calculate(node: tree, indent: "")
            
            print("The result is: \(result)")
        } catch let error  {
            switch error {
            case CustomError.failed(let message):
                print(message)
            default:
                print("Undefined Error")
            }
        }
        
    }
    
    /**
     * 解析脚本，并返回根节点
     */
    func parse() throws -> ASTNode {
        guard let tokens = tokens else { throw CustomError.failed("invalied tokens: tokens is nil") }
        let rootNode = try prog(tokens)
        
        return rootNode
    }
    
    /**
     * 语法解析：根节点
     */
    func prog(_ tokens: TokenReader) throws -> ASTNode {
        let node = SimpleASTNode(text: "Calculator", nodeType: ASTNodeType.Program)
        
        if let child = try additiveImprove(tokens) {
            node.addChild(child: child)
        }
        
        return node
    }
    
    
    /// 语法解析: 加法表达式，这个方法为了不产生左递归，造成了加法结合律问题，
    /// 例如 2 + 3 + 4，通过这个方法会先计算3+4， 然后计算最终结果，相同优先级的情况下是从右向左计算
    /// additive: multiplicative | multiplicative + additive
    /// - Parameter tokens: TokenReader
    /// - Returns: 返回加法表达式节点
    func additive(_ tokens: TokenReader) throws -> ASTNode? {
        let child1 = try multiplicative(tokens)
        var node = child1
        
        var token = tokens.peek()
        if let c1 = child1, let t = token {
            if t.tokenType == TokenType.plus || t.tokenType == TokenType.minus {
                token = tokens.read()
                let child2 = try additive(tokens)
                if let c2 = child2 {
                    node = SimpleASTNode(text: t.text, nodeType: ASTNodeType.Additive)
                    node?.addChild(child: c1)
                    node?.addChild(child: c2)
                } else {
                    throw CustomError.failed("invalid additive expression, expecting the right part.")
                }
            }
        }
        
        return node
    }
    
    
    /// 语法解析: 加法表达式，这个方法解决了加法结合律问题
    /// 同时通过while循环，不再产生尾递归，优化了效率
    /// add -> mul add'
    /// add' -> + mul add' | ε
    ///  最终推出 add -> mul (+ mul)*
    /// - Parameter tokens: TokenReader
    /// - Returns: 返回加法表达式节点
    func additiveImprove(_ tokens: TokenReader) throws -> ASTNode? {
        var child1 = try mulitplicativeImprove(tokens)  // 应用 add 规则
        var node = child1
        
        if let _ = child1 {
            while true {    // 循环应用 add'
                var token = tokens.peek()
                if let t = token, t.tokenType == TokenType.plus || t.tokenType == TokenType.minus {
                    token = tokens.read()
                    if let child2 = try mulitplicativeImprove(tokens) {  // 计算下级节点
                        node = SimpleASTNode(text: t.text, nodeType: ASTNodeType.Additive)
                        node?.addChild(child: child1!)  // 注意，新节点在顶层，保证正确的结合性
                        node?.addChild(child: child2)
                        child1 = node
                    } else {
                        break
                    }
                } else {
                    break
                }
            }
        } else {
            throw CustomError.failed("invalid additive expression, expecting the right part.")
        }
        
        return node
    }
    
    
    /// 语法解析: 乘法表达式
    ///  multiplicative: primary | primary * multiplicative
    /// - Parameter tokens: TokenReader
    /// - Returns: 返回乘法表达式节点
    func multiplicative(_ tokens: TokenReader) throws -> ASTNode? {
        let child1 = try primary(tokens)
        var node = child1
        
        var token = tokens.peek()
        if let c1 = child1, let t = token {
            if t.tokenType == TokenType.multiply || t.tokenType == TokenType.divide {
                token = tokens.read()
                let child2 = try multiplicative(tokens)
                if let c2 = child2 {
                    node = SimpleASTNode(text: t.text, nodeType: ASTNodeType.Multipliative)
                    node?.addChild(child: c1)
                    node?.addChild(child: c2)
                } else {
                    throw CustomError.failed("invalid multiplicative expression, expecting the right part.")
                }
            }
        }
        
        return node
    }
    
    /// 语法解析: 乘法表达式,  这个方法解决了乘法结合率的问题
    ///  同时通过while循环，不再产生尾递归，优化了效率
    ///  multiplicative -> primary multiplicative'
    ///  multiplicative' -> primary * mulitplicative'
    ///  最终推出: multiplicative -> primary (* primary)*
    /// - Parameter tokens: TokenReader
    /// - Returns: 返回乘法表达式节点
    func mulitplicativeImprove(_ tokens: TokenReader) throws -> ASTNode? {
        var child1 = try primary(tokens)
        var node = child1
        
        if let _ = child1 {
            while true {
                var token = tokens.peek()
                if let t = token, t.tokenType == TokenType.multiply || t.tokenType == TokenType.divide {
                    token = tokens.read()
                    if let child2 = try primary(tokens) {  // 计算下级节点
                        node = SimpleASTNode(text: t.text, nodeType: ASTNodeType.Multipliative)
                        node?.addChild(child: child1!)  // 注意，新节点在顶层，保证正确的结合性
                        node?.addChild(child: child2)
                        child1 = node
                    } else {
                        break
                    }
                } else {
                    break
                }
            }
        }
        
        return node
    }
 
    
    /// 语法解析: 基础表达式
    /// - Parameter tokens: TokenRader
    /// primary: Intliteral | Identifier | (additive) | nil
    /// - Returns: 返回基础表达式，也是叶子结点
    func primary(_ tokens: TokenReader) throws -> ASTNode? {
        var node: ASTNode?
        var token = tokens.peek()
        if let t = token {
            if t.tokenType == TokenType.IntLiteral || t.tokenType == TokenType.DoubleLiteral {
                token = tokens.read()
                node = SimpleASTNode(text: t.text, nodeType: ASTNodeType.IntLiteral)
            } else if t.tokenType == TokenType.identifier {
                token = tokens.read()
                node = SimpleASTNode(text: t.text, nodeType: ASTNodeType.Identifier)
            } else if t.tokenType == TokenType.leftParen {
                tokens.read()
                node = try additiveImprove(tokens)
                if let _ = node {
                    token = tokens.peek()
                    if let t = token, t.tokenType == TokenType.rightParen {
                        tokens.read()
                    } else {
                        throw CustomError.failed("expecting right parenthesis")
                    }
                } else {
                    throw CustomError.failed("expecting an additive expression inside parenthesis")
                }
            }
        }
        
        return node
    }
    
    
    /// 计算AST tree的最终结果
    /// 通过递归深度优先遍历，遍历树中的每个节点，最终到达叶子结点为止
    /// 当到达叶子结点时，返回叶子结点的值，并计算每个非叶子结点的值
    /// 最终返回整棵树的值
    /// - Parameters:
    ///   - node: 树的根节点
    ///   - indent: 打印附加信息
    /// - Returns: 返回整棵树的值
    func calculate(node: ASTNode, indent: String) throws -> Double {
        var result: Double = 0
        print("\(indent) Calculating: \(node.getType() ?? ASTNodeType.Program)")
        
        switch node.getType() {
        case .Program:
            try node.getChildren().forEach({[weak self] (node) in
                guard let self = self else { throw CustomError.failed("Self not exist") }
                result = try self.calculate(node: node, indent: indent + "\t")
            })
        case .IntDeclaration:
            break
        case .ExpressionStmt:
            break
        case .AssignmentStmt:
            break
        case .Primary:
            break
        case .Multipliative:
            var value1: Double = 0
            var value2: Double = 0
            if let child1 = node.getChildren().first {
                value1 = try calculate(node: child1, indent: indent + "\t")
            }
            
            if node.getChildren().count > 1 {
                let child2 = node.getChildren()[1]
                value2 = try calculate(node: child2, indent: indent + "\t")
            }
            if node.getText() == "*" {
                result = value1 * value2
            } else {
                result = value1 / value2
            }
            
        case .Additive:
            var value1: Double = 0
            var value2: Double = 0
            if let child1 = node.getChildren().first {
                value1 = try calculate(node: child1, indent: indent + "\t")
            }
            
            if node.getChildren().count > 1 {
                let child2 = node.getChildren()[1]
                value2 = try calculate(node: child2, indent: indent + "\t")
            }
            if node.getText() == "+" {
                result = value1 + value2
            } else {
                result = value1 - value2
            }
            
        case .Identifier:
            break
        case .IntLiteral:
            if let value =  Double(node.getText()) {
                return value
            }
            
            throw CustomError.failed("The text is not a valied Int value")
        case .none:
            break
        }
        
        return result
    }
    
    
    /// 打印树中每个节点的信息
    /// - Parameters:
    ///   - node: 树的根节点
    ///   - indent: 打印附加信息
    func dumpAST(node: ASTNode, indent: String) {
        print("\(indent)\(node.getType() ?? ASTNodeType.Program)    \(node.getText())")
        
        node.getChildren().forEach({(node) in
            dumpAST(node: node, indent: indent + "\t")
        })
    }
}
