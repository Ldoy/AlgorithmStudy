//
//  BinarySearch.swift
//  AlgorithmStudy_Exercise
//
//  Created by Do Yi Lee on 2022/04/09.
//

import Foundation

func binarySearch(low: inout Int, high: inout Int, target: Int) -> Int {
    var location: Int = .zero
    
    if target == high || target == low {
        location = target
        return location
    }
    
    while low <= high, location == .zero {
        let mid = (low + high)/2
        
        if  target == high ||
                target == low ||
                mid == target {
            location = target
            return location
        } else if mid < target {
            low = mid
        } else {
            high = mid
        }
    }
    print(location)
    return location
}

func binarySearchArray(list: [Int], target: Int,
                       low: inout Int, high: inout Int) {
    let sortedList = list.sorted()
    var location: Int = 0
    
    while low < high {
        let mid = (low +  high) / 2
        
        if sortedList[mid] == target || target == high || target == low {
            location = target
            print(location)
            return
        } else if sortedList[mid] < target {
            high -= 1
        } else {
            low += 1
        }
    }
}

func seqeuntialSearch(list: [Int], target: Int) {
    
}
