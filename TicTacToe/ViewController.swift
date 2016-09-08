//
//  ViewController.swift
//  TicTacToe
//
//  Created by Ketul Patel on 5/3/15.
//  Copyright (c) 2015 Ketul Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tictactoe = TicTacToe()
    
    @IBOutlet weak var square0: UIButton!
    @IBOutlet weak var square1: UIButton!
    @IBOutlet weak var square2: UIButton!
    @IBOutlet weak var square3: UIButton!
    @IBOutlet weak var square4: UIButton!
    @IBOutlet weak var square5: UIButton!
    @IBOutlet weak var square6: UIButton!
    @IBOutlet weak var square7: UIButton!
    @IBOutlet weak var square8: UIButton!
    @IBOutlet weak var displayMessageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayMessageLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func squarePressed(sender: UIButton) {
        if tictactoe.processSquare(sender.tag) {
            switch sender.tag {
                case 0:
                    square0.backgroundColor = tictactoe.player1 ? UIColor.redColor() : UIColor.blueColor()
                case 1:
                    square1.backgroundColor = tictactoe.player1 ? UIColor.redColor() : UIColor.blueColor()
                case 2:
                    square2.backgroundColor = tictactoe.player1 ? UIColor.redColor() : UIColor.blueColor()
                case 3:
                    square3.backgroundColor = tictactoe.player1 ? UIColor.redColor() : UIColor.blueColor()
                case 4:
                    square4.backgroundColor = tictactoe.player1 ? UIColor.redColor() : UIColor.blueColor()
                case 5:
                    square5.backgroundColor = tictactoe.player1 ? UIColor.redColor() : UIColor.blueColor()
                case 6:
                    square6.backgroundColor = tictactoe.player1 ? UIColor.redColor() : UIColor.blueColor()
                case 7:
                    square7.backgroundColor = tictactoe.player1 ? UIColor.redColor() : UIColor.blueColor()
                case 8:
                    square8.backgroundColor = tictactoe.player1 ? UIColor.redColor() : UIColor.blueColor()
                default:
                    print("something weird happened")
            }
            tictactoe.switchPlayer()
            if tictactoe.gameIsOver() {
                displayMessageLabel.hidden = false
                displayMessageLabel.text = tictactoe.displayMessage
            }
        }
    }
    @IBAction func resetButtonPressed(sender: UIButton) {
        square0.backgroundColor = UIColor.grayColor()
        square1.backgroundColor = UIColor.grayColor()
        square2.backgroundColor = UIColor.grayColor()
        square3.backgroundColor = UIColor.grayColor()
        square4.backgroundColor = UIColor.grayColor()
        square5.backgroundColor = UIColor.grayColor()
        square6.backgroundColor = UIColor.grayColor()
        square7.backgroundColor = UIColor.grayColor()
        square8.backgroundColor = UIColor.grayColor()
        displayMessageLabel.hidden = true
        tictactoe.resetGame()
    }
}

