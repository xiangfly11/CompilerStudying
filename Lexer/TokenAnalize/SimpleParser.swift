//
//  SimpleParser.swift
//  TokenAnalize
//  
//  Created by Jason Li on 2024.
//  Copyright © 2024 Jason Li. All rights reserved.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

    

import Foundation

/// 语法分析器
/// 实现以下语法规则
/// programm: statement+;
/// statement
/// : intDeclaration
/// | expressionStatement
/// | assignmentStatement
/// ;
/// intDeclaration : 'int' Identifier ( '=' additiveExpression)? ';';
/// expressionStatement : additiveExpression ';';
/// assignmentStatement : Identifier '=' additiveExpression ';';
/// primaryExpression : Identifier| IntLiteral | '(' additiveExpression ')';
///  使用additive(_ toknes:)函数计算的结合性是有问题的。因为它使用了下面的语法规则：
/// additive -> multiplicative | multiplicative + additive
/// multiplicative -> primary | primary * multiplicative
/// 递归项在右边，会自然的对应右结合。我们真正需要的是左结合。
///使用additiveImprove(_tokens:)函数，可以解决结合性的问题。因为它使用了下面的语法规则：
/// add -> mul (+ mul)*
/// 使用mulitplicativeImprove(_ tokens:)函数，可以解决结合性问题。因为它使用了下面的语法规则:
/// multiplicative -> primary (* primary)*
class SimpleParser {
    
    var script: String
    var lexer: SimpleLexer = SimpleLexer()
    var tokens: SimpleTokenReader?
    
    init(script: String) {
        self.script = script
        self.tokens = lexer.tokenize(code: script)

    }
    
    
    /// 解析文本，返回根节点
    /// - Returns: 返回根节点
    func parse() throws -> ASTNode {
        guard let tokens = tokens else { throw CustomError.failed("invalied tokens: tokens is nil") }
        let rootNode = try prog(tokens)
        
        return rootNode
    }
    
    
    /// 返回一个根节点
    /// - Parameter tokens: TokenReader
    /// - Returns: 返回一个根节点
    private func prog(_ tokens: TokenReader) throws -> ASTNode {
        let node = SimpleASTNode(text: "Program", nodeType: ASTNodeType.Program)
        
        return node
    }
    
    
    /// 匹配整数声明语句，语法规则如下：
    /// intDeclaration : 'int' Identifier ( '=' additiveExpression)? ';';
    /// - Parameter tokens: TokenReader
    /// - Returns: 返回整数声明语法节点
    func intDeclar(_ tokens: TokenReader) throws -> ASTNode? {
        var node: SimpleASTNode?
        if let token = tokens.peek(), token.tokenType == .id_Int {
            tokens.read()
            if let token = tokens.peek(), token.tokenType == .identifier {
                node = SimpleASTNode(text: token.text, nodeType: .IntDeclaration)
                tokens.read()
                
                if let token = tokens.peek(), token.tokenType == .assignment {
                    tokens.read()
                    if let child = try additiveImprove(tokens) {
                        node?.addChild(child: child)
                    } else {
                        throw CustomError.failed("Int declaration invalid, no correct right pattern")
                    }
                }
            } else {
                throw CustomError.failed("Int declaration invalid, no identifier")
            }
        }
        
        if let _ = node {
            if let token = tokens.peek(), token.tokenType == .SemiColon {
                tokens.read()
            } else {
                throw CustomError.failed("Invalid int declaration, need semicolon.")
            }
        }
        
        return node
    }
    
    
    /// 匹配赋值语句，语法规则如下：
    /// assignmentStatement : Identifier '=' additiveExpression ';';
    /// - Parameter tokens: TokenReader
    /// - Returns: 返回赋值语法节点
    func assignmentExp(_ tokens: TokenReader) throws -> ASTNode? {
        var node: SimpleASTNode?
        if let token = tokens.peek(), token.tokenType == .identifier {
            tokens.read()
            if let token = tokens.peek(), token.tokenType == .assignment {
                node = SimpleASTNode(text: token.text, nodeType: .AssignmentStmt)
                tokens.read()
                if let child = try additiveImprove(tokens) {
                    node?.addChild(child: child)
                    if let token = tokens.peek(), token.tokenType == .SemiColon {
                        tokens.read()
                    } else {
                        throw CustomError.failed("Invalide assigment statement, no semicolon.")
                    }
                } else {
                    node = nil
                    throw CustomError.failed("Invalide assignment statement, no right pattern.")
                }
            } else {
                //回溯
                tokens.unread()
            }
        }
        
        return node
    }
    
    
    /// 匹配表达式语句，语法规则如下:
    /// expressionStatement : additiveExpression ';';
    /// - Parameter tokens: TokenReader
    /// - Returns: 返回表达式语句节点
    func expressionStatement(_ tokens: TokenReader) throws -> ASTNode? {
        //获取当前tokens所处的位置
        //因为additiveImprove不一定会匹配成功
        //所以需要知道在匹配钱tokens所处位置
        //如果匹配失败，将tokens重新设置回之前的位置
        let position = tokens.getPosition()
        var node = try additiveImprove(tokens)
        if let _ = node {
            if let token = tokens.peek(), token.tokenType == .SemiColon {
                tokens.read()
            } else {
                node = nil
                //回溯
                tokens.setPosition(index: position)
            }
        } else {
            //回溯
            tokens.setPosition(index: position)
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
    
}
