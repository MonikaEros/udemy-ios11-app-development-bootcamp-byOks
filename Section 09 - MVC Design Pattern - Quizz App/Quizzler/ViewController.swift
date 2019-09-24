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
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questonNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        } else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questonNumber += 1
        nextQuestion()
        
    }
    
    
    func updateUI() {
        scoreLabel.text = "\(score)"
        progressLabel.text = "\(questonNumber + 1) / 13"
        
        progressBar.frame.size.width = (view.frame.size.width / 13) * CGFloat(questonNumber)
    }
    

    func nextQuestion() {
        if questonNumber <= 12 {
            questionLabel.text = allQuestions.list[questonNumber].questionText
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions. Do you want to start over?", preferredStyle: .alert)
            
            questonNumber = 0
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
                { (UIAlertAction) in
                    self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questonNumber].answer
        
        let right = correctAnswer == pickedAnswer ? true : false
        
        if right {
            score += 1
            ProgressHUD.showSuccess("Correct!")
        } else {
            ProgressHUD.showError("Wrong!")
        }
    }
    
    
    func startOver() {
        questonNumber = 0
        score = 0
        nextQuestion()
    }
    

    
}
