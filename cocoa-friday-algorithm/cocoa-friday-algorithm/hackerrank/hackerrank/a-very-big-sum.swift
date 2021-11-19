//
//  a-very-big-sum.swift
//  hackerrank
//
//  Created by Bibi on 2021/11/19.
//

import Foundation

func aVeryBigSum(ar: [Int]) -> Int {
    // Write your code here
    // 배열의 모든 요소를 더해 출력한다. 어떤 요소는 꽤 크다.
    return ar.reduce(0, {$0 + $1})
}
