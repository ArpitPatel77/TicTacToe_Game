//
//  Arpit_ViewController.swift
//  Arpit_Patel_Green_TicTacToe
//
//  Created by Arpit Kamalkumar Patel on 2019-10-09.
//  Copyright © 2019 Arpit Kamalkumar Patel. All rights reserved.
//

import UIKit

class Arpit_ViewController: UIViewController {
    //MARK:- Class Variables
    var theGameModel = Arpit_GameModel()
    var gameFinished = false
    
    
    
    //MARK:- Outlets
    @IBOutlet weak var gameStateLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gameStateLabel.text = theGameModel.WhoseTurn + "'s Turn"
        // Do any additional setup after loading the view.
    }
    
    //MARK:- IBActions

    @IBAction func squareTouched(_ sender: UIButton) {
        
        print("button touched")
        print(sender.tag)
        
        if (sender.currentTitle == "X" || sender.currentTitle == "O" || gameFinished) {
            //do nothing
        } else {
        sender.setTitle(theGameModel.WhoseTurn, for: .normal);
        theGameModel.playMove(tag: sender.tag)
            
            //check if the game is finished
             gameFinished = theGameModel.isGameFinished()
            
            if (gameFinished) {
                let whoWon = theGameModel.whoWon
                
                if (whoWon == "") {
                    gameStateLabel.text = "!Draw"
                } else {
                    gameStateLabel.text = whoWon + "'s Won"
                }
               
            } else {
                gameStateLabel.text = theGameModel.WhoseTurn + "'s Turn"
            }

        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
