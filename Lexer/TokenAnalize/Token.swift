//
//  Token.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/2/1.
//

import Foundation

/**
 Token 协议，用来声明Token类型包含的属性和方法
 */
protocol Token {
    var tokenType: TokenType { get }
    var text: String { get }
}
