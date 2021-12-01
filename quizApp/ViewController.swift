//
//  ViewController.swift
//  quizApp
//
//  Created by loujain on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
let catImage = UIImage(named: "quiz1.jpg")
let myImageView:UIImageView = UIImageView()
let viewLabel = UILabel(frame: CGRect(x: 100, y: 100 , width: 200, height: 50))

let questionsLabel = UILabel(frame: CGRect(x: 100, y: 500 , width: 200, height: 50))
let buttonQuestions = UIButton (frame: CGRect(x: 100, y: 550 , width: 200, height: 50))

let answerLabel = UILabel(frame: CGRect(x: 100, y: 600 , width: 200, height: 50))
let buttonAnswer = UIButton(frame: CGRect(x: 100, y: 650 , width: 200, height: 50))
let arrQuestions = ["IOS Is A __ software.", "The IDE Used In Swift Is.", "IOS Stands For ?"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
        // title
        viewLabel.text = "Quiz Time"
        viewLabel.textColor = #colorLiteral(red: 0.623210609, green: 0.6233178377, blue: 0.6231965423, alpha: 1)
        viewLabel.textAlignment = .center
        viewLabel.font = UIFont.systemFont(ofSize: 40 , weight: .bold)
        view.addSubview(viewLabel)
        
        // image
        myImageView.frame = CGRect(x: 15, y: 150, width: 400, height: 300)
        myImageView.image = catImage
        view.addSubview(myImageView)

        // Label 1
        questionsLabel.text = "Questions"
        questionsLabel.textColor = #colorLiteral(red: 0.0002784126555, green: 0.0005019952659, blue: 0.1176792607, alpha: 1)
        questionsLabel.textAlignment = .center
        questionsLabel.font = UIFont.systemFont(ofSize: 17 , weight: .medium)
        view.addSubview(questionsLabel)
        
        
        // Button1
        buttonQuestions.setTitle("Next Question", for: .normal)
        buttonQuestions.layer.cornerRadius = 10
        buttonQuestions.backgroundColor = #colorLiteral(red: 0.3794959784, green: 0.6330318451, blue: 0.6293919086, alpha: 1)
        buttonQuestions.addTarget(self, action: #selector(arrQuestion) , for: .touchDown)
        view.addSubview(buttonQuestions)
        
        
        // Label 2
        answerLabel.text = "Answers"
        answerLabel.textColor = #colorLiteral(red: 0.0002784126555, green: 0.0005019952659, blue: 0.1176792607, alpha: 1)
        answerLabel.textAlignment = .center
        answerLabel.font = UIFont.systemFont(ofSize: 17 , weight: .medium)
        view.addSubview(answerLabel)
        
        // Button2
        buttonAnswer.setTitle("Answer", for: .normal)
        buttonAnswer.layer.cornerRadius = 10
        buttonAnswer.backgroundColor = #colorLiteral(red: 0.3794959784, green: 0.6330318451, blue: 0.6293919086, alpha: 1)
        buttonAnswer.addTarget(self, action: #selector(arrAnswer), for: .touchDown)
        view.addSubview(buttonAnswer)

    }
    
    @objc func arrQuestion (){
        if let randomElement = arrQuestions.randomElement() {
            questionsLabel.text = randomElement
        }
   }
    
    @objc func arrAnswer (){
        let arrAnswer = ["Proprietary", "Xcode", "IPhone Operating System"]
        if questionsLabel.text == arrQuestions[0]{
            answerLabel.text = arrAnswer[0]
        }else if questionsLabel.text == arrQuestions[1]{
            answerLabel.text = arrAnswer[1]
        }else if questionsLabel.text == arrQuestions[2]{
            answerLabel.text = arrAnswer[2]
        }
    }
}

