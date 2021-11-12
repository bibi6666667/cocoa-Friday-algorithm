//
//  p12910.swift
//  cocoa-friday-algorithm
//
//  Created by Bibi on 2021/11/12.
//

import Foundation
func runP12910(_ arr:[Int], _ divisor:Int) -> [Int]{
    
    var result = Array<Int>()
    for num in arr {
        if num % divisor == 0 {
            result.append(num)
        }
    }
    
    if result.isEmpty {
        result.append(-1)
    } else {
        result.sort()
    }
    return result
}
