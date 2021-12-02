//
//  ViewController.swift
//  quizApp
//
//  Created by Ghada Fahad on 27/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    
    var quesArr = ["How many colors are there in a rainbow?", "How many days are there in a normal year?", "How many days do we have in a week?"]
    
    var ansArr = ["7", "365", "seven"]
    
    var question = UILabel(frame: CGRect(x: 30, y: 100, width: 300, height: 100))
    var answer = UILabel(frame: CGRect(x: 30, y: 400, width: 300, height: 50))
    var quesButton = UIButton(frame: CGRect(x: 100, y: 300, width: 150, height: 50))
    var ansButoon = UIButton(frame: CGRect(x: 100, y: 450, width: 150, height: 50))
    var currentQuestion = 0
    var currntAnswewr = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        
        question.text = "question"
        question.textColor = .black
        question.textAlignment = .center
        question.backgroundColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
        view.addSubview(question)
        
        answer.text = "question"
        answer.textColor = .white
        answer.textAlignment = .center
        answer.backgroundColor = .gray
        view.addSubview(answer)
        
        
        quesButton.backgroundColor = .purple
        quesButton.setTitle("Show Question", for: .normal)
        quesButton.addTarget(self, action: #selector(foo), for: .touchDown)
        view.addSubview(quesButton)
        
        
        ansButoon.backgroundColor = .purple
        ansButoon.setTitle("Show Answer", for: .normal)
        ansButoon.addTarget(self, action: #selector(foo2), for: .touchDown)
        view.addSubview(ansButoon)
    }
    @objc func foo() {
        question.text = quesArr[currentQuestion]
        currentQuestion += 1
        }
    
    @objc func foo2() {
        answer.text = ansArr[currntAnswewr]
        currntAnswewr += 1
    }

}

