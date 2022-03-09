//
//  RollViewController.swift
//  Dice
//
//  Created by Jason Schatz on 11/6/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - RollViewController: UIViewController

class RollViewController: UIViewController {
    
    // MARK: Generate Dice Value
    
    /**
    * Randomly generates a Int from 1 to 6
    */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }

    // MARK: Actions
    
    @IBAction func rollTheDice() {
        
        // let controller = DiceViewController() // here we present DiceViewController() before rollTheDice() method, so we replace it by there two lines:
        
        // Get the DiceViewController
        var controller: DiceViewController
        controller = self.storyboard?.instantiateViewController(withIdentifier: "DiceViewController") as! DiceViewController //  9. Presenting the Dice View Controller - storyboard
        
        // Set the two values to random numbers from 1 to 6
        controller.firstValue = self.randomDiceValue()
        controller.secondValue = self.randomDiceValue()
        
        // Present the view Controller
        present(controller, animated: true, completion: nil)
        
        // performSegue(withIdentifier: "rollDice", sender: self)
    }
}

