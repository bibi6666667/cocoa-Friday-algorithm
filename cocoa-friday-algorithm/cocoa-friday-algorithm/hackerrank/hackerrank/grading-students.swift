//
//  grading-students.swift
//  hackerrank
//
//  Created by Bibi on 2021/11/19.
//

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {
    // 점수는 0부터 100까지
    // 40점 이하는 탈락
    // 점수와 다음 5의 배수와의 차이가 3보다 작으면(1 또는 2), 점수를 반올림
    // 점수가 38보다 작으면 반올림하지 않음 - 탈락
    // 입력 : 첫째 줄은 학생 수를 넣어 줌
    var result = Array<Int>()
    for grade in grades {
        switch grade {
        case ..<38 :
            result.append(grade)
        default :
            if grade % 5 == 4 {
                result.append(grade + 1)
            } else if grade % 5 == 3 {
                result.append(grade + 2)
            } else {
                result.append(grade)
            }
        }
    }
    return result
}

// https://github.com/witekbobrowski/HackerRank/blob/master/Algorithms/Implementation/grading-students.swift
func gradingStudents2(grades: [Int]) -> [Int] {
    var result: [Int] = []
    for grade in grades {
        if grade >= 38, (grade % 5) > 2 {
            result.append(grade + (5 - (grade % 5)))
        } else {
            result.append(grade)
        }
    }
    return result
}

func printAnswer(_ input: [Int]) {
    for item in input {
        print(item)
    }
}
