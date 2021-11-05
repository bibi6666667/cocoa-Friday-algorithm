//
//  p2920.swift
//  cocoa-friday-algorithm
//
//  Created by Bibi on 2021/11/05.
//

import Foundation

func runP2920() {
    let input = readLine() ?? ""
    switch input {
    case "1 2 3 4 5 6 7 8" :
        print("ascending")
    case "8 7 6 5 4 3 2 1":
        print("descending")
    default:
        print("mixed")
    }
}
