//
//  ExchangeSort.swift
//  AlgorithmStudy_Exercise
//
//  Created by Do Yi Lee on 2022/04/09.
//

import Foundation

//MARK:- 교환정렬, Exchange Sort

func exchangeSort(targetList: inout [Int], n: Int) -> [Int] {
    var i: Int = 0
    while i < n - 1 {
        let j: Int = i + 1
        if targetList[i] > targetList[j] {
            let targetListI = targetList[i]
            targetList[i] = targetList[j]
            targetList[j] = targetListI
        }
        i += 1
    }
    print(targetList)
    return targetList
}
