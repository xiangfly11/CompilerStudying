//
//  TokenReader.swift
//  TokenAnalize
//
//  Created by Jason Li on 2024/2/1.
//  以下代码参照极客时间 宫文学老师的编译原理之美课程改写成swift实现

import Foundation

/**
 * 一个Token流。由Lexer生成。Parser可以从中获取Token。
 */
protocol TokenReader {
    /**
     * 返回Token流中下一个Token，并从流中取出。 如果流已经为空，返回nil
     */
    @discardableResult
    func read() -> Token?
    
    /**
     * 返回Token流中下一个Token，但不从流中取出。 如果流已经为空，返回nil
     */
    func peek() -> Token?
    
    /**
     * Token流回退一步。恢复原来的Token。
     */
    func unread()
    
    /**
     * 获取Token流当前的读取位置。
     * @return Int
     */
    func getPosition() -> Int
    
    /**
     * 设置Token流当前的读取位置
     * @param position
     */
    func setPosition(index: Int)
}
