//
//  p68644.swift
//  cocoa-friday-algorithm
//
//  Created by Bibi on 2021/11/12.
//

import Foundation

func runP68644(_ numbers:[Int]) -> [Int] {
    var result = [Int]()
    for i in 0...(numbers.count - 1) {
        var numbersCopy = numbers
        var currentNumber = numbersCopy.remove(at: i)
        for j in 0...(numbersCopy.count - 1) {
            var addNum = numbersCopy[j] + currentNumber
            if !result.contains(addNum) {
                result.append(addNum)
            }
        }
    }
    return result.sorted()
}
