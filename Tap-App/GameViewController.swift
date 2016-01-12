//
//  GameViewController.swift
//  Tap-App
//
//  Created by Preston Price on 1/11/16.
//  Copyright © 2016 Koalaty Games. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    
    @IBOutlet weak var player1Button: UIButton!
    @IBOutlet weak var player1Label: UILabel!
    
    @IBOutlet weak var player2Button: UIButton!
    @IBOutlet weak var player2Label: UILabel!
    
    
    var scorePlayer1 = 0 {
        didSet {
            player1Label.text = String(scorePlayer1)
        }
    }
    
    var scorePlayer2 = 0 {
        didSet {
            player2Label.text = String(scorePlayer2)
        }
    }

    @IBAction func player1ButtonPressed(sender: AnyObject) {
        scorePlayer1++
    }
 
    @IBAction func player2ButtonPressed(sender: AnyObject) {
        scorePlayer2++
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Rotate score so player 2 can see correctly
        player2Label.transform = CGAffineTransformMakeRotation(CGFloat(M_PI))
    }
}
