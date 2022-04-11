//
//  Fibonacci_List.swift
//  AlgorithmStudy_Exercise
//
//  Created by Do Yi Lee on 2022/04/11.
//

import Foundation

//MARK:- Array
func fibonacciTwo(_ number: Int) {
    // 어레이만들기
    if number == .zero {
        return
    } else if number == 1 {
        return
    }
    
    var storage: [Double] = [0,1]
    
    //주어진 숫자까지 피보나치 수열 구하기
    for i in 2...number {
        // 2항 부터
        //쭉 저장하는 쪽으로
        let next = storage[i - 2] + storage[i - 1]
        storage.append(next)
    }
    print(storage.last)
}
