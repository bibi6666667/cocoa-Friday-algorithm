//
//  reverse-integer.swift
//  leetcode
//
//  Created by Bibi on 2021/11/26.
//

import Foundation

func reverse(_ x: Int) -> Int {
    if x == 0 {
        return 0
    }
    
    var answer = 0
    var xPieces = Array<Int>()
    let isNegative = x < 0 ? true : false
    let absX = abs(x)
    let absXDigits = String(absX).count
    
    var pow10 = 1
    for i in 1...absXDigits {
        var aPiece = (absX % (pow10 * 10)) / pow10
        pow10 *= 10
        
        xPieces.append(aPiece)
    }
    
    for i in 0..<xPieces.count {
        print(xPieces[i])
        answer += xPieces[i] * (pow10 / 10)
        
        pow10 /= 10
    }
    
    if answer > INT32_MAX {
        return 0
    }
    
    if isNegative {
        answer *= -1
    }
    
    return answer
}
