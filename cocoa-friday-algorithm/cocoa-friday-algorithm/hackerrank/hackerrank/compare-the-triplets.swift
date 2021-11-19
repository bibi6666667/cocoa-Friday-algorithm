//
//  compare-the-triplets.swift
//  hackerrank
//
//  Created by Bibi on 2021/11/19.
//

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    // Write your code here
    var result = Array<Int>(repeating: 0, count: 2) // Alice's score and Bob's score
    for i in 0..<3 {
        if a[i] > b[i] {
            result[0] += 1
        }
        if a[i] < b[i] {
            result[1] += 1
        }
    }
    return result
}
