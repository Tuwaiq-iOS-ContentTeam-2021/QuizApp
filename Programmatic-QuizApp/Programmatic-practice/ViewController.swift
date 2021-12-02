//
//  ViewController.swift
//  Programmatic-practice
//
//  Created by Badreah Saad on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let startButton = UIButton()
    let questionLabel = UILabel(frame: CGRect(x: 60, y: 150, width: 300, height: 100))
    let answerField = UITextField(frame: CGRect(x: 60, y: 250, width: 300, height: 60))
    let checkbutton = UIButton(frame: CGRect(x: 120, y: 350, width: 200, height: 60))
    let answerLabel = UILabel(frame: CGRect(x: 60, y: 400, width: 300, height: 200))
    
    var questionArray = ["2 + 2","4 - 1","10 / 5","2 * 3","10 + 10"]
    var answerArray = ["4","3","2","6","20"]
    
    var questionArrayIndex = 0
    var answerArrayIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemCyan
        
        view.addSubview(startButton)
        startButton.frame = CGRect(x: 120, y: 450, width: 200, height: 60)
        startButton.backgroundColor = .separator
        startButton.layer.cornerRadius = 10
        startButton.setTitle("Start Quiz", for: .normal)
        startButton.addTarget(self, action: #selector (quizView), for: .touchDown)
        
    }
    
    @objc func quizView() {
        
        view.addSubview(questionLabel)
        questionLabel.text = ""
        questionLabel.textAlignment = .center
        
        view.addSubview(answerLabel)
        answerLabel.text = ""
        answerLabel.textAlignment = .center
        
        startButton.frame = CGRect(x: 120, y: 700, width: 200, height: 60)
        startButton.setTitle("Start", for: .normal)
        startButton.backgroundColor = .systemRed
        startButton.tintColor = .white
        startButton.addTarget(self, action: #selector (questions), for: .touchDown)
        
        view.addSubview(checkbutton)
        checkbutton.backgroundColor = .gray
        checkbutton.layer.cornerRadius = 10
        checkbutton.setTitle("Check Answer", for: .normal)
        checkbutton.tintColor = .white
        checkbutton.addTarget(self, action: #selector (answers), for: .touchDown)
        
        view.addSubview(answerField)
        answerField.placeholder = " Write your Answer "
        answerField.borderStyle = .roundedRect
        answerField.backgroundColor = .white
        
    }
    
    
    @objc func questions() {
        
        questionLabel.text = questionArray[questionArrayIndex]
        
        if questionArrayIndex < questionArray.count - 1 {
            questionArrayIndex += 1
            startButton.setTitle("Next Question", for: .normal)
        } else {
            startButton.setTitle("Done", for: .normal)
        }
        answerField.text = ""
        
    }
    
    
    
    
    
    
    @objc func answers() {
        
        if answerArrayIndex < answerArray.count  && answerField.text == answerArray[answerArrayIndex] {
            answerArrayIndex += 1
            answerLabel.text = "Correct Answer"
        } else  {
            answerLabel.text = "Wrong Answer"
            answerArrayIndex += 1
        }
        
    }
    
    
    
    
    
    
}
