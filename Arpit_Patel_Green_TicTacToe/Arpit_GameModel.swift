//
//  Arpit_GameModel.swift
//  Arpit_Patel_Green_TicTacToe
//
//  Created by Arpit Kamalkumar Patel on 2019-10-09.
//  Copyright © 2019 Arpit Kamalkumar Patel. All rights reserved.
//

import Foundation

class Arpit_GameModel  {
    var WhoseTurn = "X"
    var lastPlayed = ""
    var whoWon = ""
    
    var numberOfMovesPlayed = 0
    
    var squareContents = Array(repeating: "", count: 10)
    
    let winningCombinations = [
        [1,2,3],
        [4,5,6],
        [7,8,9],
        [1,4,7],
        [2,5,8],
        [3,6,9],
        [1,5,9],
        [7,5,3]
    ]
    
    func playMove(tag: Int) {
        squareContents[tag] = WhoseTurn
        
        lastPlayed = WhoseTurn
        if (WhoseTurn == "X") {
            WhoseTurn = "O"
        } else {
            WhoseTurn = "X"
        }
        numberOfMovesPlayed += 1
    }
    
    func isGameFinished() -> Bool {
        if(numberOfMovesPlayed < 5) {
            return false
        } else if (numberOfMovesPlayed == 9) {
            return true
        }
        for winningCombo in winningCombinations {
            let index1 = winningCombo[0]
            let index2 = winningCombo[1]
            let index3 = winningCombo[2]
            
            if (squareContents[index1] == lastPlayed && squareContents[index2] == lastPlayed && squareContents[index3] == lastPlayed ) {
                //lastPlayer won the game
                whoWon = lastPlayed
                return true
            }
            
        }
        return false
    }
}
