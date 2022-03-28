//
//  N-Queens.swift
//  AlgorithmStudy_Exercise
//
//  Created by Do Yi Lee on 2022/03/10.
//

import Foundation

//MARK:- Get chess width(length)
let n = readLine().flatMap { Int($0) }!

//MARK:- Create array including starting node
func generateChess(n: Int) -> [Int] {
    let chess: Array<Int> = Array.init(repeating: 0, count: n + 1)
    return chess
}

var chessBoard = generateChess(n: n)

//MARK:- Start Index
var counts = 0


//MARK:-Search promising node using dfs
func queens(row: Int) {
    let length = chessBoard.count - 1
    
    if !promising(location: row) {
        return
    } else {
        if row == length {
            counts += 1
        } else {
            for column in 1...length {
                    chessBoard[row + 1] = column
                    queens(row: row + 1)
            }
        }
    }
}

//MARK:- Check Promising right before current row
func promising(location: Int) -> Bool {
    if location == .zero {
        return true
    }
    
    for row in 1..<location {
        if chessBoard[row] == chessBoard[location] ||
           location - row == abs(chessBoard[row] - chessBoard[location]) {
            return false
        }
    }
    
    return true
    
    //MARK:- Using whild loop to check promising node
    //    var k = 1
    //    var flag = true
    //
    //    while k < location, flag == true {
    //        if chessBoard[k] == chessBoard[location] {
    //            flag = false
    //        } else if (location) - k == abs(chessBoard[k] - chessBoard[location]) {
    //            flag = false
    //
    //        }
    //        k += 1
    //    }
    //    return flag
    //}
}


//MARK:- Test validity
queens(row: 0)
print(counts)
