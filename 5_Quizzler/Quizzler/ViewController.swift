//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = Questionbank()
    var pickedAnswer : Bool = false
    var questionNum : Int = 0
    var score : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
        updateUI()
        
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if(sender.tag == 1){
            pickedAnswer = true
        }
        else if(sender.tag == 2){
            pickedAnswer = false
        }
        checkAnswer()
        
        questionNum = questionNum + 1
        
        nextQuestion()
        
  
    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNum+1)/13"
        progressBar.frame.size.width = (view.frame.size.width/13) * CGFloat(questionNum+1)
    }
    

    func nextQuestion() {
        if(questionNum <= 12){
            questionLabel.text = allQuestions.list[questionNum].questionText
        } else {
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions,do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {(UIAlertAction) in self.startOver()})
            alert.addAction(restartAction)
            present(alert,animated: true,completion: nil)
        }
        
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNum].answer
        if(pickedAnswer == correctAnswer){
            ProgressHUD.showSuccess("Correct")
            score += 1
            
        }else{
            ProgressHUD.showError("Wrong")
        }
        updateUI()
    }
    
    
    func startOver() {
        questionNum = 0
        score = 0
        nextQuestion()
        updateUI()
    }
    

    
}
