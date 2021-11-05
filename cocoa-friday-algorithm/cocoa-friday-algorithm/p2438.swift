//
//  p2438.swift
//  cocoa-friday-algorithm
//
//  Created by Bibi on 2021/11/05.
//

import Foundation

func runP2438() {
    let input = readLine() ?? ""
    let num = Int(input) ?? 0
    for i in 1...num {
        for _ in 1...i {
            print("*", terminator: "")
        }
        print()
    }
}
