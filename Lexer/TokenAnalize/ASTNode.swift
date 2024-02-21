//
//  Node.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/2/8.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

import Foundation

protocol ASTNode {
    
    func getParent() -> ASTNode?
    
    func getChildren() -> Array<ASTNode>
    
    func getType() -> ASTNodeType?
    
    func getText() -> String
    
    func addChild(child: ASTNode)
}


class SimpleASTNode: ASTNode {
    
    private var text: String
    private weak var parent: SimpleASTNode? = nil
    private var children: [ASTNode] = []
    private var nodeType: ASTNodeType? = nil
    
    
    init(text: String, nodeType: ASTNodeType? = nil) {
        self.text = text
        self.nodeType = nodeType
    }
    
    
    func getParent() -> ASTNode? {
        return parent
    }
    
    func getType() -> ASTNodeType? {
        return nodeType
    }
    
    func getText() -> String {
        return text
    }
    
    func getChildren() -> [ASTNode] {
        return children
    }
    
    func getChildrenCount() -> Int {
        return children.count
    }
    
    func addChild(child: ASTNode) {
        children.append(child)
        if let child = child as? SimpleASTNode {
            child.parent = self
        }
    }
  
    
    func isTerminalNode() -> Bool {
        return children.count == 0
    }
    
}

