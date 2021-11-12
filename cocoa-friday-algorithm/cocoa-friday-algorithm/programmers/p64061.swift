//
//  p64061.swift
//  cocoa-friday-algorithm
//
//  Created by Bibi on 2021/11/12.
//

import Foundation

// 테스트케이스 7, 8, 10, 11 실패
func runP64061(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var dollBasket = board
    var poppedDollNum = 0
    var pickedDollBasket = Array<Int>()
    printBasket(basket: dollBasket)
    
    for i in 0...(moves.count - 1) {
        var currentMovedRow = moves[i] - 1
        print("\(currentMovedRow) 열에서 인형을 뽑습니다.")
        for j in 0...(dollBasket.count - 1) {
            if dollBasket[j][currentMovedRow] != 0 { // 인형 집어다 놓기
                pickedDollBasket.append(dollBasket[j][currentMovedRow])
                print("\((dollBasket[j][currentMovedRow]))를 뽑아 바구니에 넣었습니다.")
                dollBasket[j][currentMovedRow] = 0
                printBasket(basket: dollBasket)
                print("중간 바구니 : \(pickedDollBasket)")
                break
            } else {
                continue
            }
        }
        if pickedDollBasket.count >= 2 { // 중복인형 제거
            for k in 0...(pickedDollBasket.count - 2) {
                let oneDoll = pickedDollBasket[k]
                if oneDoll != 0 && oneDoll == pickedDollBasket[k + 1] {
                    pickedDollBasket.removeAll(where: { $0 == oneDoll})
                    poppedDollNum += 2
                }
            }
        }
        print("\(i)회차 바구니 : \(pickedDollBasket)")
    }
    return poppedDollNum
}

func printBasket(basket: [[Int]]) {
    for innerArray in basket {
        print(innerArray)
    }
}
