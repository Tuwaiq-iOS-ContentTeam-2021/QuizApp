//
//  ViewController.swift
//  QuizApp
//
//  Created by Abdullah AlRashoudi on 12/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    // Properties
    let backgroundImage = UIImageView()
    let myQuizView = UIView()
    let mainLabel = UILabel()
    let questionLabel = UILabel()
    let nextQuestion = UIButton()
    let answerLabel = UILabel()
    let answerButton = UIButton()
    var counter: Int = 0
    
    let arrayQuestion: [String] = ["What is the best company in the world?" , "Where is the best ecosystem in the world?", "What is the best mobile in the world?",""]
    
    let arrayAnswer: [String] = ["Apple", "In Apple", "iPhone",""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Background
        backgroundImage.image = UIImage(named: "11")
        let width = view.frame.width
        let height = view.frame.height
        backgroundImage.frame = CGRect(x: 0, y: 0, width: width, height: height)
        view.addSubview(backgroundImage)
        
        // AppName
        mainLabel.text = "Quiz App"
        mainLabel.textColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        mainLabel.font = .systemFont(ofSize: 40, weight: .semibold)
        mainLabel.frame = CGRect(x: 130, y: 70, width: 180, height: 60)
        view.addSubview(mainLabel)
        
        // Quiz Section
        backgroundImage.addSubview(myQuizView)
        myQuizView.frame = CGRect(x: 25, y: 300, width: 380, height: 450)
        myQuizView.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        myQuizView.layer.cornerRadius = 15
        
        // QuestionLabel
        questionLabel.text = "Here is the question"
        questionLabel.textColor = #colorLiteral(red: 0.2684474289, green: 0.3649398685, blue: 0.7585869431, alpha: 1)
        questionLabel.font = .systemFont(ofSize: 14, weight: .light)
        questionLabel.frame = CGRect(x: 40, y: 40, width: 300, height: 60)
        questionLabel.textAlignment = .center
        myQuizView.addSubview(questionLabel)
        
        // NextQuestionButton
        nextQuestion.setTitle("Next Question", for: .normal)
        nextQuestion.setTitleColor(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1), for: .normal)
        nextQuestion.backgroundColor = #colorLiteral(red: 0.2684474289, green: 0.3649398685, blue: 0.7585869431, alpha: 1)
        nextQuestion.frame = CGRect(x: 150, y: 390, width: 130, height: 40)
        nextQuestion.layer.cornerRadius = 10
        nextQuestion.addTarget(self, action: #selector(myQuestion) , for: .touchUpInside)
        view.addSubview(nextQuestion)
        
        // AnswerLabel
        answerLabel.text = "??"
        answerLabel.textColor = #colorLiteral(red: 0.2684474289, green: 0.3649398685, blue: 0.7585869431, alpha: 1)
        answerLabel.font = .systemFont(ofSize: 14, weight: .light)
        answerLabel.frame = CGRect(x: 90, y: 300, width: 200, height: 60)
        answerLabel.textAlignment = .center
        myQuizView.addSubview(answerLabel)
        
        // AnswerButton
        answerButton.setTitle("Show The Answer", for: .normal)
        answerButton.setTitleColor(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1), for: .normal)
        answerButton.backgroundColor = #colorLiteral(red: 0.2684474289, green: 0.3649398685, blue: 0.7585869431, alpha: 1)
        answerButton.frame = CGRect(x: 140, y: 650, width: 160, height: 40)
        answerButton.layer.cornerRadius = 10
        answerButton.addTarget(self, action: #selector(myAnswer), for: .touchUpInside)
        view.addSubview(answerButton)
        
    }
    
    // Methods
    @objc func myQuestion() {
        
        questionLabel.text = arrayQuestion[counter]
        answerLabel.text = "??"
        if counter < arrayQuestion.count-1 {
            counter += 1
        }
        
        else {
            counter = 0
        }
    }
    
    @objc func myAnswer() {
        if counter == 0 {
            
        } else {
            answerLabel.text = arrayAnswer[counter-1]
        }
        
    }
    
}



