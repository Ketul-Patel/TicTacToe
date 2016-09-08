//
//  TicTacToe.swift
//  TicTacToe
//
//  Created by Ketul Patel on 5/3/15.
//  Copyright (c) 2015 Ketul Patel. All rights reserved.
//

import Foundation

class TicTacToe {
    var player1 = true
    var grid = [0,0,0,
        0,0,0,
        0,0,0]
    var winner: Int = 0
    var displayMessage = ""
    func processSquare(square: Int) -> Bool {
        if winner == 0 && grid[square] == 0 {
            grid[square] = player1 ? 1 : 2
            return true
        } else {
            return false
        }
    }
    func switchPlayer() {
        player1 = !player1
    }
    func resetGame() {
        grid = [0,0,0,
                0,0,0,
                0,0,0]
        player1 = true
        winner = 0
    }
    
    func gameIsOver() -> Bool {
        checkSides();
        checkCross();
        checkDiag();
        checkTie();
        
        if winner != 0 {
            if winner == 1 {
                displayMessage = "Red Player Wins!"
                return true
            } else if winner == 2 {
                displayMessage = "Blue Player Wins!"
                return true
            } else if winner == 3 {
                displayMessage = "It's a Tie!"
                return true
            } else {
                print("something went wrong")
                return true
            }
        } else {
            return false
        }
    }
    func checkTie() {
        for var i = 0; i < grid.count; i++ {
            if grid[i] == 0 {
                return
            }
        }
        winner = 3
    }
    func checkSides() {
        // check top left corner
        if grid[0] != 0 && grid[0] == grid[1] && grid[0] == grid[2] {
            winner = grid[0]
        }
        if grid[0] != 0 && grid[0] == grid[3] && grid[0] == grid[6] {
            winner = grid[0]
        }
        // check bottom right corner
        if grid[8] != 0 && grid[8] == grid[7] && grid[8] == grid[6] {
            winner = grid[8]
        }
        if grid[8] != 0 && grid[8] == grid[5] && grid[8] == grid[2] {
            winner = grid[8]
        }
    }
    func checkCross() {
        if grid[4] != 0 && grid[4] == grid[1] && grid[4] == grid[7] {
            winner = grid[4]
        }
        if grid[4] != 0 && grid[4] == grid[3] && grid[4] == grid[5] {
            winner = grid[4]
        }
    }
    func checkDiag() {
        if grid[4] != 0 && grid[4] == grid[2] && grid[4] == grid[6] {
            winner = grid[4]
        }
        if grid[4] != 0 && grid[4] == grid[0] && grid[4] == grid[8] {
            winner = grid[4]
        }
    }
}