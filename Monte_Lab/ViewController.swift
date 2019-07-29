//
//  ViewController.swift
//  Monte_Lab
//
//  Created by EricM on 7/29/19.
//  Copyright © 2019 EricM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var bCard: UIButton!
    @IBOutlet weak var tCard: UIButton!
    @IBOutlet weak var kCard: UIButton!
    
    let kingImage = UIImage(named: "kingCard")
    let threeImage = UIImage(named: "threeCard")
    let backImage = UIImage(named: "cardBackRed")
    var rand = Int.random(in: 0...2)
    //var rand2 = arc4random(2)
    
    
    @IBAction func backCard(_ sender: UIButton) {
        if rand == 0{
        bCard.setImage(kingImage, for: UIControl.State.normal)
        }
        else{
            bCard.setImage(threeImage, for: UIControl.State.normal)
        }
//        bCard.isEnabled = false
//        tCard.isEnabled = false
//        kCard.isEnabled = false
        if bCard.currentImage == kingImage{
            message.text = "You Won!"
        }
        else{
            message.text = "Wrong you lose!"
        }
        
        
    }
    @IBAction func threeCard(_ sender: UIButton) {
        if rand == 1{
            tCard.setImage(kingImage, for: UIControl.State.normal)
        }
        else{
            tCard.setImage(threeImage, for: UIControl.State.normal)
        }
        bCard.isEnabled = false
        tCard.isEnabled = false
        kCard.isEnabled = false
        if tCard.currentImage == kingImage{
            message.text = "You Won!"
        }
        else{
            message.text = "Wrong you lose!"
        }
    }
    @IBAction func kingCard(_ sender: UIButton) {
        if rand == 2{
            kCard.setImage(kingImage, for: UIControl.State.normal)
        }
        else{
            kCard.setImage(threeImage, for: UIControl.State.normal)
        }
        bCard.isEnabled = false
        tCard.isEnabled = false
        kCard.isEnabled = false
        if kCard.currentImage == kingImage{
            message.text = "You Won!"
        }
        else{
            message.text = "Wrong you lose!"
        }
    }
    @IBAction func newGame(_ sender: UIButton) {
        bCard.setImage(backImage, for: UIControl.State.normal)
        tCard.setImage(backImage, for: UIControl.State.normal)
        kCard.setImage(backImage, for: UIControl.State.normal)
        
        message.text = "Pick the card with a King"
        rand = Int.random(in: 0...2)// Must reset random number or else the value will stay the same each time
        bCard.isEnabled = true
        tCard.isEnabled = true
        kCard.isEnabled = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

