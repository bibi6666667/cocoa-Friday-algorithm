//
//  p8958.swift
//  cocoa-friday-algorithm
//
//  Created by Bibi on 2021/11/05.
//

import Foundation

func runP8958() {
    let input = Int(readLine() ?? "") ?? 0 // 입력 줄 갯수
    for i in 1...input {
        let line = readLine() ?? ""
        var score = 0
        var point = 1
        for ox in line {
            if ox == "O" {
                score += point
                point += 1
            }
            if ox == "X" {
                point = 1
            }
        }
        print(score)
    }
}
