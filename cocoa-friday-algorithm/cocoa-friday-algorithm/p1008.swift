//
//  p1008.swift
//  cocoa-friday-algorithm
//
//  Created by Bibi on 2021/11/05.
//

import Foundation

func runP1008() {
    let input = readLine() ?? ""
    let split = input.split(separator: " ")
    let values = split.map{ Float($0) ?? 0}
    print(values[0] / values[1])
}
