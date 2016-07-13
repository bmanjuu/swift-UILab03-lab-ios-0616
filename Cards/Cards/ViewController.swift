//
//  ViewController.swift
//  Cards
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Create IB outlets

    @IBOutlet weak var middleNumberLabel: UILabel!
    @IBOutlet weak var cornerSuit: UILabel!
    @IBOutlet weak var otherCornerSuit: UILabel!
    //can only connect one IBOutlet to one thing!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // TODO: IB actions and code to update UI
    
    @IBAction func cardButtons(sender: UIButton) {
        // sender.currentTitle is an optional!
        // need to be more explicit with what the sender is! originally, it was anyObject (so sender.currentTitle was of type String?! but change it to UIButton. so the "!" meant that I needed to be more explicit with who the sender is)
        if let card = sender.currentTitle {
            switch card {
                case "♣️4":
                    middleNumberLabel.text = "4"
                    cornerSuit.text = "♣️"
                    otherCornerSuit.text = "♣️"
                case "♠️3":
                    middleNumberLabel.text = "3"
                    cornerSuit.text = "♠️"
                    otherCornerSuit.text = "♠️"
                case "♦️8":
                    middleNumberLabel.text = "8"
                    cornerSuit.text = "♦️"
                    otherCornerSuit.text = "♦️"
                case "♥️10":
                    middleNumberLabel.text = "10"
                    cornerSuit.text = "♥️"
                    otherCornerSuit.text = "♥️"
                default:
                    middleNumberLabel.text = "?"
                    cornerSuit.text = "?"
                    otherCornerSuit.text = "?"
            } // end of switch
        } // end of if statement
    } // end of IBAction

//THE END
}
