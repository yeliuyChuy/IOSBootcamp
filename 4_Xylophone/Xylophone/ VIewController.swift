//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var audioPlayer : AVAudioPlayer!
    let fileArray = ["note1","note2","note3","note4","note5","note6","note7"]
    var selectedFileName : String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        notePlay(fileName: fileArray[sender.tag - 1])
        
    }
    
    func notePlay(fileName: String){
        //initielize sound url
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: "wav")
        
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayer.play()
    }
}

