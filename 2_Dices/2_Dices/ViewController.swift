//
//  ViewController.swift
//  2_Dices
//
//  Created by Liu Chuwei on 7/1/19.
//  Copyright © 2019 Liu Chuwei(Personal). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0

    @IBOutlet weak var uiImageView1: UIImageView!
    
    @IBOutlet weak var uiImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func uiButton1(_ sender: UIButton) {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        uiImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        uiImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

