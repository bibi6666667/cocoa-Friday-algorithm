//
//  longest-common-prefix.swift
//  leetcode
//
//  Created by Bibi on 2021/11/26.
//

import Foundation


// https://batterflyyin.tistory.com/60.
// 보고 연습하기..
func longestCommonPrefix(_ strs: [String]) -> String {
    guard !strs.isEmpty else {
        return ""
    }
    return strs.reduce(strs[0], merge)
}

func merge(_ str1: String, _ str2: String) -> String {
    let length = str1.count < str2.count ? str1.count : str2.count
    let arr1 = Array(str1)
    let arr2 = Array(str2)
    var commonLength = 0
    for i in 0..<length {
        if (arr1[i] != arr2[i]) {
            break;
        }
        commonLength+=1
    }
    return String(arr1[0..<commonLength])
}






func test(_ strs: [String]) -> String {
    var answer = ""
    var prefix = ""
    
    if strs.count == 1 {
        prefix = strs[0]
        return prefix
    }
    
    var prefixNum = 1
    
    for i in 0..<strs.count {
        let one = strs[i]
        if one == "" {
            return ""
        }
        
        if i != strs.count - 1 {
            for j in 1...one.count {
                let two = strs[i + 1]
                let onePrefix = one.prefix(j)
                print("one : \(one), onePrefix : \(onePrefix)")
                if two.prefix(j) == onePrefix {
                    prefix = String(onePrefix)
                    prefixNum += 1
                    
                    print("prefix : \(prefix)")
                } else {
                    print("prefix는 \(prefix)가 아님")
                    break
                    
                }
            }
            answer = prefix
        }
        
    }
    return answer
}
