//
//  roman-to-integer.swift
//  leetcode
//
//  Created by Bibi on 2021/11/26.
//

import Foundation

func romanToInt(_ s: String) -> Int {
    
    // I(1), V(5), X(10), L(50), C(100), D(500), M(1000)
    var answer = 0
    var lastChar = ""
    for char in s {
        switch char {
        case "I" :
            answer += 1
        case "V" :
            if lastChar == "I" {
                answer += (4 - 1)
            } else {
                answer += 5
            }
        case "X" :
            if lastChar == "I" {
                answer += (9 - 1)
            } else {
                answer += 10
            }
        case "L" :
            if lastChar == "X" {
                answer += (40 - 10)
            } else {
                answer += 50
            }
        case "C" :
            if lastChar == "X" {
                answer += (90 - 10)
            } else {
                answer += 100
            }
        case "D" :
            if lastChar == "C" {
                answer += (400 - 100)
            } else {
                answer += 500
            }
        case "M" :
            if lastChar == "C" {
                answer += (900 - 100)
            } else {
                answer += 1000
            }
        default:
            answer += 0
        }
        lastChar = String(char)
    }
    return answer
}
