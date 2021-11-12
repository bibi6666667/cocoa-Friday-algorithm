//
//  p42840.swift
//  cocoa-friday-algorithm
//
//  Created by Bibi on 2021/11/12.
//

import Foundation

func runP42840(_ answers:[Int]) -> [Int] {
    var winner = Array<Int>()
    var winnerScore = Array<Int>()
    let supo1 = [1, 2, 3, 4, 5]
    let supo2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let supo3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var supo1Answer = Array<Int>(repeating: 0, count: answers.count)
    var supo2Answer = Array<Int>(repeating: 0, count: answers.count)
    var supo3Answer = Array<Int>(repeating: 0, count: answers.count)
    var supo1Score = 0
    var supo2Score = 0
    var supo3Score = 0
    for i in 0...answers.count - 1 {
        supo1Answer[i] = supo1[i % supo1.count]
        supo2Answer[i] = supo2[i % supo2.count]
        supo3Answer[i] = supo3[i % supo3.count]
        
        if answers[i] == supo1Answer[i] {
            supo1Score += 1
        }
        if answers[i] == supo2Answer[i] {
            supo2Score += 1
        }
        if answers[i] == supo3Answer[i] {
            supo3Score += 1
        }
    }
    if max(supo1Score, supo2Score, supo3Score) == supo1Score {
        winner.append(1)
    }
    if max(supo1Score, supo2Score, supo3Score) == supo2Score {
        winner.append(2)
    }
    if max(supo1Score, supo2Score, supo3Score) == supo3Score {
        winner.append(3)
    }
    
    return winner.sorted()
}

