//
//  SimpleLexer.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/2/1.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

import Foundation

class SimpleLexer {
    var tokenText: String = ""  //变量，用来存储每次DFA状态改变时，token中包含的字符
    var tokens: Array<Token> = [] //所有token的集合
    var token: SimpleToken = SimpleToken() //初始化的token对象

    
    func isAlpha(char: String) -> Bool {
//        let regex = /[a-zA-Z_]([a-zA-Z_] | [0-9])*/
        let regex = /[a-zA-Z_]+/
        
        let result = char.matches(of: regex)
        
        return result.count > 0
    }
    
    func isDigital(char: String) -> Bool {
        let regex = /[0-9]+/
        
        let result = char.matches(of: regex)
        
        return result.count > 0
    }
    
    func isBlank(char: String) -> Bool {
        let regex = /\s/
        
        let result = char.matches(of: regex)
        
        return result.count > 0
    }
    
    /**
    * 有限状态机进入初始状态。
    * 这个初始状态其实并不做停留，它马上进入其他状态。
    * 开始解析的时候，进入初始状态；某个Token解析完毕，也进入初始状态，在这里把Token记下来，然后建立一个新的Token。
    * @param ch
    * @return
    */
    func createToken(char: String?) -> DfaState {
        if tokenText.count > 0 {
            token.text = tokenText
            tokens.append(token)
            
            tokenText = ""
            token = SimpleToken()
        }
        
        var newState: DfaState = DfaState.initial
        
        guard let char = char else { return newState }
        
        if isAlpha(char: char) {
            if char == "I" {
                newState = DfaState.id_Int1
            } else if char == "l" {
                newState = DfaState.id_let1
            } else if char == "v" {
                newState = DfaState.id_var1
            } else {
                newState = DfaState.id
            }
            token.tokenType = TokenType.identifier
            tokenText.append(char)
        } else if isDigital(char: char) {
            newState = DfaState.intLiteral
            token.tokenType = TokenType.IntLiteral
            tokenText.append(char)
        } else if char == ">" {
            newState = DfaState.GT
            token.tokenType = TokenType.GT
            tokenText.append(char)
        } else if char == "=" {
            newState = DfaState.assignment
            token.tokenType = TokenType.assignment
            tokenText.append(char)
        } else if char == "*" {
            newState = DfaState.multiply
            token.tokenType = TokenType.multiply
            tokenText.append(char)
        } else if char == "/" {
            newState = DfaState.divide
            token.tokenType = TokenType.divide
            tokenText.append(char)
        } else if char == "-" {
            newState = DfaState.minus
            token.tokenType = TokenType.minus
            tokenText.append(char)
        } else if char == "+" {
            newState = DfaState.plus
            token.tokenType = TokenType.plus
            tokenText.append(char)
        } else if char == ":" {
            newState = DfaState.colon
            token.tokenType = TokenType.colon
            tokenText.append(char)
        } else if char == "(" {
            newState = DfaState.leftParen
            token.tokenType = TokenType.leftParen
            tokenText.append(char)
        } else if char == ")" {
            newState = DfaState.rightParen
            token.tokenType = TokenType.rightParen
            tokenText.append(char)
        }
        
        return newState
    }
    
    /**
    * 解析字符串，形成Token。
    * 这是一个有限状态自动机，在不同的状态中迁移。
    * @param code
    * @return
    */
    func tokenize(code: String) -> SimpleTokenReader {
        tokenText = ""
        tokens = []
        token = SimpleToken()
        var state = DfaState.initial
        
        for char in code {
            let str = String(char)
            switch state {
            case .initial:
                state = createToken(char: str)
            case .id:
                if isAlpha(char: str) || isDigital(char: str) {
                    tokenText.append(str)
                } else {
                    state = createToken(char: str)
                }
            case .GT:
                if str == "=" {
                    token.tokenType = TokenType.GE
                    state = DfaState.GE
                    tokenText.append(str)
                } else {
                    state = createToken(char: str)
                }
            case .GE, .plus, .minus, .multiply, .divide, .assignment, .colon, .leftParen, .rightParen:
                state = createToken(char: str)
            case .intLiteral:
                if isDigital(char: str) {
                    tokenText.append(str)
                } else {
                    state = createToken(char: str)
                }
            case .id_Int1:
                if str == "n" {
                    state = DfaState.id_Int2
                    tokenText.append(str)
                } else {
                    state = createToken(char: str)
                }
            case .id_Int2:
                if str == "t" {
                    state = DfaState.id_Int3
                    tokenText.append(str)
                } else {
                    state = createToken(char: str)
                }
            case .id_Int3:
                if isBlank(char: str) {
                    token.tokenType = TokenType.id_Int
                    state = createToken(char: str)
                } else {
                    state = DfaState.id
                    tokenText.append(str)
                }
            case .id_let1:
                if str == "e" {
                    state = DfaState.id_let2
                    tokenText.append(str)
                } else {
                    state = createToken(char: str)
                }
            case .id_let2:
                if str == "t" {
                    state = DfaState.id_let3
                    tokenText.append(str)
                } else {
                    state = createToken(char: str)
                }
            case .id_let3:
                if isBlank(char: str) {
                    token.tokenType = TokenType.id_let
                    state = createToken(char: str)
                } else {
                    state = DfaState.id
                    tokenText.append(str)
                }
            case .id_var1:
                if str == "a" {
                    state = DfaState.id_var2
                    tokenText.append(str)
                } else {
                    state = createToken(char: str)
                }
            case .id_var2:
                if str == "r" {
                    state = DfaState.id_var3
                    tokenText.append(str)
                } else {
                    state = createToken(char: str)
                }
            case .id_var3:
                if isBlank(char: str) {
                    token.tokenType = TokenType.id_var
                    state = createToken(char: str)
                } else {
                    state = DfaState.id
                    tokenText.append(str)
                }
            }
        }
        
        //这一步只是为了将最后没有放入token的tokenText内容放入token
        //这个最后的token将会被放入tokens中
        if tokenText.count > 0 {
           let _ = createToken(char: nil)
        }
        
        return SimpleTokenReader(tokens: tokens, pos: 0)
    }
    
    /**
    * 打印所有的Token
    * @param tokenReader
    */
    func dump(tokenReader: SimpleTokenReader) {
        print("text     type")
        while let token = tokenReader.read() {
            print("\(token.text)       \(token.tokenType)")
        }
    }
    
}
