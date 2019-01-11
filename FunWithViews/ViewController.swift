//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topLeft: UIView!
    @IBOutlet weak var midLeft: UIView!
    @IBOutlet weak var botLeft: UIView!
    @IBOutlet weak var midMid: UIView!
    @IBOutlet weak var topRight: UIView!
    @IBOutlet weak var midRight: UIView!
    @IBOutlet weak var botRight: UIView!
    @IBOutlet weak var redBox: UILabel!
    @IBOutlet weak var orangeBox: UILabel!
    @IBOutlet weak var yellowBox: UILabel!
    @IBOutlet weak var greenBox: UILabel!
    @IBOutlet weak var blueBox: UILabel!
    @IBOutlet weak var purpleBox: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topLeft.isHidden = true
        midLeft.isHidden = true
        botLeft.isHidden = true
        midMid.isHidden = true
        topRight.isHidden = true
        midRight.isHidden = true
        botRight.isHidden = true
        redBox.isHidden = true
        orangeBox.isHidden = true
        yellowBox.isHidden = true
        greenBox.isHidden = true
        blueBox.isHidden = true
        purpleBox.isHidden = true
    }

    
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let diceRoll = randomDiceRoll()
        updateLabelWithRoll(roll: diceRoll)
        updateBoxWithRoll(roll: diceRoll)
    }
    func hideAllBlocks(){
        topLeft.isHidden = true
        midLeft.isHidden = true
        botLeft.isHidden = true
        midMid.isHidden = true
        topRight.isHidden = true
        midRight.isHidden = true
        botRight.isHidden = true
    }
    func updateBoxWithRoll(roll:Int){
        hideAllBlocks()
        switch roll {
        case 1:
            midMid.isHidden = false
        case 2:
            botLeft.isHidden = false
            topRight.isHidden = false
        case 3:
            botLeft.isHidden = false
            topRight.isHidden = false
            midMid.isHidden = false
        case 4:
            topLeft.isHidden = false
            botLeft.isHidden = false
            topRight.isHidden = false
            botRight.isHidden = false
        case 5:
            topLeft.isHidden = false
            botLeft.isHidden = false
            topRight.isHidden = false
            botRight.isHidden = false
            midMid.isHidden = false
        case 6:
            topLeft.isHidden = false
            botLeft.isHidden = false
            topRight.isHidden = false
            botRight.isHidden = false
            midLeft.isHidden = false
            midRight.isHidden = false
        default:
            break
        }
    }
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        if !purpleBox.isHidden {
            hideAllBlocks()
            redBox.isHidden = true
            orangeBox.isHidden = true
            yellowBox.isHidden = true
            greenBox.isHidden = true
            blueBox.isHidden = true
            purpleBox.isHidden = true
        }
        if redBox.isHidden {
            redBox.text = diceScore
            redBox.isHidden = false
        } else if orangeBox.isHidden {
            orangeBox.text = diceScore
            orangeBox.isHidden = false
        } else if yellowBox.isHidden {
            yellowBox.text = diceScore
            yellowBox.isHidden = false
        }  else if greenBox.isHidden {
            greenBox.text = diceScore
            greenBox.isHidden = false
        } else if blueBox.isHidden {
            blueBox.text = diceScore
            blueBox.isHidden = false
        }else if purpleBox.isHidden {
            purpleBox.text = diceScore
            purpleBox.isHidden = false
        }
        
        
        // .. and so on
    }
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

}
