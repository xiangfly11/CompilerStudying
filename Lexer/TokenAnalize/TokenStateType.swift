//
//  TokenStateType.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/1/31.
//

import Foundation

/**
 Token的类型
 */
enum TokenType {
    case identifier; //标识符
    case GT; // >
    case GE; // >=
    case IntLiteral; //整型字面量
    case assignment; // =
    case plus; // +
    case minus; // -
    case multiply;// *
    case divide; // /
    case id_Int; // Int
    case id_let; // let
    case id_var; // var
    case colon; //冒号:
}
