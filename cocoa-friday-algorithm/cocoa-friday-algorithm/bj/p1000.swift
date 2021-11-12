//
//  p1000.swift
//  cocoa-friday-algorithm
//
//  Created by Bibi on 2021/11/05.
//

import Foundation

func runP1000() {
    let input = readLine() ?? ""
    let split = input.split(separator: " ")
    let values = split.map{ Int($0) ?? 0
    }
    let sum = values.reduce(0){$0 + $1}
    print(sum)
}
