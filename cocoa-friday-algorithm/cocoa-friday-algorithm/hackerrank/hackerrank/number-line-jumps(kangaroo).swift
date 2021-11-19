//
//  number-line-jumps(kangaroo).swift
//  hackerrank
//
//  Created by Bibi on 2021/11/19.
//

import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    // Write your code here
    // x1에서 시작해 매번 v1만큼 가는 캥거루와, x2에서 시작해 매번 v2만큼 가는 캥거루가 만날 수 있는지를 YES/NO로 리턴한다.
    let yes = "YES"
    let no = "NO"
    var jump1 = x1
    var jump2 = x2
    while true {
        if v1 < v2 { // 왼쪽 캥거루가 오른쪽 캥거루보다 항상 짧게 뜀
            return no
        }
        jump1 += v1
        jump2 += v2
        if jump1 == jump2 { // 캥거루 둘이 만남
            return yes
        }
        if jump1 > jump2 { // 왼쪽 캥거루가 오른쪽 캥거루를 뛰어넘음
            return no
        }
    }
}
