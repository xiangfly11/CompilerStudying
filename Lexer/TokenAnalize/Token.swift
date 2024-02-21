//
//  Token.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/2/1.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

import Foundation

/**
 Token 协议，用来声明Token类型包含的属性和方法
 */
protocol Token {
    var tokenType: TokenType { get }
    var text: String { get }
}
