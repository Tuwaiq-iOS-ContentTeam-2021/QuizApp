//
//  ViewController.swift
//  QuizApp
//
//  Created by Um Talal 2030 on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let view1 = UIView()
    let question = UILabel()
    let answer = UILabel()
    let label3 = UILabel()
    let Q = UIButton()
    let A = UIButton()
    
   var questionsArray: [String] = ["What is the currency of K.S.A?", "How many times England won the football Worls Cup", "How many letters are there in the English alphabet"]

    var answersArray: [String] = ["Saudi Riyal", "Once (1966)", "26 Letters" ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(view1)
        view1.frame = CGRect(x: 0, y: 0, width: 500, height: 1000)
        view1.backgroundColor = .opaqueSeparator
        
        
        view1.addSubview(question)
        question.frame = CGRect(x: 110, y: 50, width: 200, height: 100)
        question.text = "QuizApp"
        question.font = UIFont.systemFont(ofSize: 30)
        question.textAlignment = .center
        question.tintColor = .red
        
        view1.addSubview(answer)
        answer.frame = CGRect(x: 20, y: 200, width: 400, height: 100)
        answer.text = " Click on the button for the question ?"
        answer.textAlignment = .left
        answer.tintColor = .blue
        
        view1.addSubview(Q)
        Q.frame = CGRect(x: 70, y: 400, width: 300, height: 50)
        Q.backgroundColor = .blue
        Q.setTitle("next Qustion", for: .normal)
        Q.layer.cornerRadius = 20
        Q.addTarget(self, action: #selector(nextQuestion) , for: .touchDown)
        
        
        view1.addSubview(label3)
        label3.frame = CGRect(x: 70, y: 500, width: 300, height: 100)
        label3.text = "                     "
        label3.textAlignment = .left
        label3.tintColor = .blue
        
        
        view1.addSubview(A)
        A.frame = CGRect(x: 70, y: 700, width: 300, height: 50)
        A.backgroundColor = .blue
        A.setTitle("Get the Answer", for: .normal)
        A.layer.cornerRadius = 20
        A.addTarget(self, action: #selector(ShowQuestion) , for: .touchDown)
        
    }
    
    @objc func nextQuestion(){
        if questionsArray.isEmpty {
            answer.text = "برافوووووووو عليك"
            Q.setTitle("", for: .normal)
            Q.backgroundColor = .clear
            
        }else {
            answer.textAlignment = .center
            answer.text = questionsArray.first
            questionsArray.removeFirst()
            label3.text = "                      "
            
        }
    }
    
    @objc func ShowQuestion(){
        if answersArray.isEmpty {
            label3.text = ""
            A.setTitle("", for: .normal)
            A.backgroundColor = .clear
        }else {
            label3.textAlignment = .center
            label3.text = answersArray.first
            answersArray.removeFirst()
        }
    }
}


