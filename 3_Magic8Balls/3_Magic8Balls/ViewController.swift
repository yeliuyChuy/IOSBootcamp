//
//  ViewController.swift
//  3_Magic8Balls
//
//  Created by Liu Chuwei on 7/2/19.
//  Copyright © 2019 Liu Chuwei(Personal). All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    var randomBallNumber : Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
  
    override func viewDidLoad() {
        newBallImage()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }

}

