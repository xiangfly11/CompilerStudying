//
//  SimpleCalculator.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/2/19.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

import Foundation


/// 这个计算器实现了简单的整数加减乘除和括号功能

class SimpleCalculator {
    var script: String
    
    init(script: String) {
        self.script = script
    }
    
    
    func evaluate() {
        print("解析: \(script)")
        do {
            let parser = SimpleParser(script: self.script)
            let tree = try parser.parse()
            if let tokens = parser.tokens, let child = try parser.additiveImprove(tokens) {
                tree.addChild(child: child)
            }
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
