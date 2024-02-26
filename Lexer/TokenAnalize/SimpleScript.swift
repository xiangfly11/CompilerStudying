//
//  SimpleScript.swift
//  TokenAnalize
//  
//  Created by Jason Li on 2024.
//  Copyright © 2024 Jason Li. All rights reserved.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

    

import Foundation

class SimpleScript {
    var input = ""
    var variables: [String: Double] = [:]
    
    func read() {
        print("请输入要执行的脚本代码:")
        while let line = readLine() {
            input += line
        }
        
        print("输入文本:\n\(input)")
        parseScript()
    }
    
    private func parseScript() {
        let parser = SimpleParser(script: input)
        
        do {
            let tree = try parser.parse()
            if let tokens = parser.tokens {
                while let _ = tokens.peek() {
                    var child = try parser.intDeclar(tokens)
                    
                    if child == nil {
                        child = try parser.expressionStatement(tokens)
                    }
                    
                    if child == nil {
                        child = try parser.assignmentExp(tokens)
                    }
                    
                    if let childNode = child {
                        tree.addChild(child: childNode)
                    } else {
                        print("Unknow statement.")
                        return
                    }
                }
            } else {
               print("No inavalide tokens.")
               return
            }
            
            dumpAST(node: tree, indent: "")
            
            let result = try evaluate(node: tree, indent: "")
            print("Evaluat result: \(result)")
            
        } catch let error {
            switch error {
            case CustomError.failed(let message):
                print(message)
            default:
                print("Undefined Error")
            }
        }
    }
    
    func evaluate(node: ASTNode, indent: String) throws -> Double {
        var result: Double = 0
        print("\(indent) Calculating: \(node.getType() ?? ASTNodeType.Program)")
        
        switch node.getType() {
        case .Program:
            try node.getChildren().forEach({[weak self] (node) in
                guard let self = self else { throw CustomError.failed("Self not exist") }
                result = try evaluate(node: node, indent: indent + "\t")
            })
        case .IntDeclaration:
            let variableName = node.getText()
            var variableValue: Double = 0
            
            if node.getChildren().count > 0 {
                let child = node.getChildren()[0]
                result = try evaluate(node: child, indent: indent+"\t")
                variableValue = result
            }
            variables[variableName] = variableValue
        case .ExpressionStmt:
            break
        case .AssignmentStmt:
            let variableName = node.getText()
            if !variables.contains(where: { $0.key == variableName }) {
                throw CustomError.failed("Unkonw variable \(variableName)")
            } else {
                if node.getChildren().count > 0 {
                    let child = node.getChildren()[0]
                    result = try evaluate(node: child, indent: indent + "\t")
                    variables[variableName] = result
                }
            }
        case .Primary:
            break
        case .Multipliative:
            var value1: Double = 0
            var value2: Double = 0
            if let child1 = node.getChildren().first {
                value1 = try evaluate(node: child1, indent: indent + "\t")
            }
            
            if node.getChildren().count > 1 {
                let child2 = node.getChildren()[1]
                value2 = try evaluate(node: child2, indent: indent + "\t")
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
                value1 = try evaluate(node: child1, indent: indent + "\t")
            }
            
            if node.getChildren().count > 1 {
                let child2 = node.getChildren()[1]
                value2 = try evaluate(node: child2, indent: indent + "\t")
            }
            if node.getText() == "+" {
                result = value1 + value2
            } else {
                result = value1 - value2
            }
            
        case .Identifier:
            let variableName = node.getText()
            if variables.contains(where: { $0.key == variableName }) {
                if let value = variables[variableName] {
                    result = value
                } else {
                    throw CustomError.failed("variable \(variableName) has not been set any value")
                }
            } else {
                throw CustomError.failed("unknown variable: \(variableName)")
            }
            
        case .IntLiteral:
            if let value =  Double(node.getText()) {
                return value
            }
            
            throw CustomError.failed("The text is not a valied Int value")
        case .none:
            break
        }
        
        if (indent == "") {
            if node.getType() == .IntDeclaration || node.getType() == .AssignmentStmt {
                print("\(node.getText()): \(result)")
            } else if node.getType() != .Program {
                print(result)
            }
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
