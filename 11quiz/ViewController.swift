//
//  ViewController.swift
//  11quiz
//
//  Created by Raphael Thome  on 8/16/17.
//  Copyright © 2017 Raphael Thome . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var questionCount: UILabel!
    @IBOutlet weak var questionView: UIView!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    let allQuestions = Questions()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    let configs = Config()
    var score : Int = 0
    
    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        // Checks the button pressed
        
        if sender.tag == 1 {
            
            pickedAnswer = true
            
            
        } else if sender.tag == 2 {
            
            pickedAnswer = false
            
        }
        
        
        
        // Checks if the anwser is right or wrong
        checkAnswer()
        
        // Increases the question number
        questionNumber += 1
        
        // Goes to the next question
        nextQuestion()
        
    }
    
    @IBAction func resetBT(_ sender: Any) {
        
        startOver()
        
    }
    
    func update() {
        
        // Updates Score Label
        scoreLabel.text = "\(score) Points"
        
        // Updates Question Count Label
        questionCount.text = "Question \(questionNumber + 1)/\(configs.amountofQuestions)"
        
        // Updates Progress Bar
        progressBar.frame.size.width = (view.frame.size.width / 11) * CGFloat(questionNumber + 1)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Apply rounded corner to Question View
        questionView.layer.cornerRadius = 25
        
        // Triggers next question
        nextQuestion()
        
    }
    
    // goes to the next question
    func nextQuestion() {
        
        if questionNumber <= configs.amountofQuestions - 1 {
            
            questionLabel.text = allQuestions.list[questionNumber].questionText
            
            update()
            
        } else {
            
            let alert = UIAlertController(title: "Awessome!", message: "You've got a score of \(score), do you want to star over?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                
                self.startOver()
                
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
            
        }
        
    }
    
    // check if the answer is correct
    func checkAnswer() {
        
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            
            // You can add something to tell the user if he got the right answer
            

            // Adds points to the user
            score += configs.amountofpointsAdd
            
        } else {
            
            // You can add something to tell the user if he got the wrong answer
            score -= configs.amountofpointsSub
            
        }
        
    }
    
    // resets everything
    
    func startOver() {
        
        questionNumber = 0
        score = 0
        nextQuestion()
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }


}

