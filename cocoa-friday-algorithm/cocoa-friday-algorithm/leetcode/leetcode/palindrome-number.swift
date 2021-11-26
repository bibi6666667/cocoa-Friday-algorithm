//
//  palindrome-number.swift
//  leetcode
//
//  Created by Bibi on 2021/11/26.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
        
    if x < 0 {
        return false
    }
    
    var xPieces = Array<Int>()
    var xReversePieces = Array<Int>()
    let absX = abs(x)
    let absXDigits = String(absX).count
    
    var pow10 = 1
    for i in 1...absXDigits {
        var aPiece = (absX % (pow10 * 10)) / pow10
        pow10 *= 10
        
        xPieces.append(aPiece)
        xReversePieces.insert(aPiece, at: 0)
        
    }
    
    if xPieces == xReversePieces {
        return true
    }
    return false
}
