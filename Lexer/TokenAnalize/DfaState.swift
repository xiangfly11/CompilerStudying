//
//  DfaState.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/1/31.
//

import Foundation

/**
 DFA State 有限状态机的状态
 */
enum DfaState {
    case initial; //初始状态
    case id; //变量名
    case GT; // >
    case GE; // >=
    case intLiteral; //整型字面量
    case assignment; // =
    case plus; // +
    case minus; // -
    case multiply;// *
    case divide; // /
    case id_Int1; // 只包含Int关键字的I
    case id_Int2; // 只包含Int关键字的n
    case id_Int3; // 只包含Int关键字的t
    case id_let1; // 只包含let关键字的l
    case id_let2; // 只包含let关键字的e
    case id_let3; // 只包含let关键字的t
    case id_var1; // 只包含var关键字的v
    case id_var2; // 只包含var关键字的a
    case id_var3; // 只包含var关键字的r
    case colon; // 冒号:
}
