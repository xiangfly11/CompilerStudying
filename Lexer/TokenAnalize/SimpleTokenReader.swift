//
//  SimpleTokenReader.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/2/1.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

import Foundation

class SimpleTokenReader: TokenReader {
    var tokens: Array<Token> = []
    var pos: Int = 0
    
    init(tokens: Array<Token>, pos: Int) {
        self.tokens = tokens
        self.pos = pos
    }
    
    @discardableResult
    func read() -> Token? {
        if pos < tokens.count {
            defer {
                pos += 1
            }
            return tokens[pos]
        }
        
        return nil
    }
    
    func peek() -> Token? {
        if pos < tokens.count {
            return tokens[pos]
        }
        
        return nil
    }
    
    func unread() {
        if pos > 0 {
            pos -= 1
        }
        
    }
    
    func getPosition() -> Int {
        return pos
    }
    
    func setPosition(index: Int) {
        if index >= 0 && index < tokens.count {
            self.pos = index
        }
    }
    
}
