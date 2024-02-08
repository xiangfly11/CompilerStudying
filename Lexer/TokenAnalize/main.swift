//
//  main.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/1/31.
//

import Foundation

//print("Hello, World!")

let lexer = SimpleLexer()

let code1 = "age33_87iduvl >= 45"
let tokenReader1 = lexer.tokenize(code: code1)
lexer.dump(tokenReader: tokenReader1)


print("===========")
let code2 = "c909ad689ge567 = 33 + 42-5*6/9"
let tokenReader2 = lexer.tokenize(code: code2)
lexer.dump(tokenReader: tokenReader2)

print("===========")
let code3 = "var a : Int = 7 * 16"
let tokenReader3 = lexer.tokenize(code: code3)
lexer.dump(tokenReader: tokenReader3)
