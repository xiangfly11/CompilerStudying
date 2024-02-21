//
//  SimpleToken.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/2/1.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

import Foundation

class SimpleToken: Token {
    var tokenType: TokenType = TokenType.identifier
    
    var text: String = ""
    
}
