//
//  ASTNodeType.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/2/19.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

import Foundation

enum ASTNodeType {
    case Program;   //程序入口，根节点
    case IntDeclaration; //整型变量声明
    case ExpressionStmt; //表达式语句，即表达式后面跟个分号
    case AssignmentStmt; //赋值语句
    case Primary;       //基础表达式
    case Multipliative;  //乘法表达式
    case Additive;   //加法表达式
    case Identifier;  //标识符
    case IntLiteral;    //整型字面量
}
