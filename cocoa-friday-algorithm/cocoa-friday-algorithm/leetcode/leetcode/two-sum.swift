//
//  two-sum.swift
//  leetcode
//
//  Created by Bibi on 2021/11/26.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var answer = Array<Int>()
    for i in 0..<nums.count {
        var numsCopy = nums
        let one = numsCopy.remove(at: i)
        let left = target - one
        print(one,left)
        if numsCopy.contains(left) {
            answer.append(i)
            answer.append(nums.lastIndex(of: left)!)
            return answer
        } else {
            continue
        }
    }
    return answer
}
