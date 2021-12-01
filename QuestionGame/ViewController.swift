//
//  ViewController.swift
//  QuestionGame
//
//  Created by Ebtesam Alahmari on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let questionLbl = UILabel(frame: CGRect(x: 50, y: 200, width: 300, height: 40))
    let questionBtn = UIButton(frame: CGRect(x: 50, y: 260, width: 300, height: 40))
    let answerLbl = UILabel(frame: CGRect(x: 50, y: 320, width: 300, height: 40))
    let answerBtn = UIButton(frame: CGRect(x: 50, y: 380, width: 300, height: 40))
    
    let questions = [
        "Which country in the world is believed to have the most miles of motorway?",
        "What is the capital of New Zealand?",
        "How many players are in a football team?",
        "What is the tallest mountain in the world?",
        "What is taller, an elephant or a giraffe?"
    ]
    let answers = [
        "China",
        "Wellington",
        "11 players",
        "Mount Everest",
        "A giraffe"
    ]
    
    var currentQuestionIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //question Lable
        questionLbl.text = "-------"
        questionLbl.adjustsFontSizeToFitWidth = true
        questionLbl.numberOfLines = 0
        questionLbl.textColor = #colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1)
        view.addSubview(questionLbl)
        
        //answer Lable
        answerLbl.text = "???"
        answerLbl.textColor = #colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1)
        view.addSubview(answerLbl)
        
        //question Button
        buttonAttributes(title: "Show Next Question", button: questionBtn)
        questionBtn.addTarget(self, action: #selector(showQuestion), for: .touchDown)
        view.addSubview(questionBtn)
        
        //answer Button
        buttonAttributes(title: "Show Answer", button: answerBtn)
        answerBtn.addTarget(self, action: #selector(showAnswer), for: .touchDown)
        view.addSubview(answerBtn)
        
    }
    
    
    @objc func showQuestion() {
        if currentQuestionIndex < questions.count {
            questionLbl.text = questions[currentQuestionIndex]
            currentQuestionIndex += 1
        }
    }
    
    @objc func showAnswer() {
        if currentQuestionIndex > 0 {
            for i in 0...answers.count {
                if i == currentQuestionIndex {
                    answerLbl.text = answers[i-1]
                }
            }
        }
    }
    
    func buttonAttributes(title: String, button: UIButton) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = #colorLiteral(red: 0, green: 0.5690457821, blue: 0.5746168494, alpha: 1)
        button.layer.cornerRadius = 10
    }
    
}


