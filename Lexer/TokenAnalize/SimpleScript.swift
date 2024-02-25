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
            
        } catch let error {
            switch error {
            case CustomError.failed(let message):
                print(message)
            default:
                print("Undefined Error")
            }
        }
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
