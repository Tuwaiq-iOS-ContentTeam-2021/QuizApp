//
//  ViewController.swift
//  QuizApp
//
//  Created by Sahab Alharbi on 26/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
   var questions = [" WHAT DO YOU DO IN YOUR FREE TIME? ","HOW WAS YOUR DAY?","HOW’S THE WEATHER?"]
    var answers = ["I like reading and relaxing at home","Very productive","It’s quite cold"]
    var count = 0
   
    let question = UILabel(frame: CGRect(x: 20, y: 130, width: 350, height: 50))
    let queButton = UIButton(frame: CGRect(x: 200, y: 280, width: 100, height: 50))
    let answer = UILabel(frame: CGRect(x: 20, y: 430, width: 350, height: 50))
    let ansButton = UIButton(frame: CGRect(x: 200, y: 590, width: 100, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        view.backgroundColor = UIColor(#colorLiteral(red: 0.9591751695, green: 0.8250824213, blue: 0.8519485593, alpha: 1))
      
        // Question
        question.backgroundColor = UIColor(#colorLiteral(red: 1, green: 0.9115803838, blue: 0.764361918, alpha: 1))
        question.textColor = .white
        question.textAlignment = .center
        

        view.addSubview(question)
        
        // Question Button
       
        view.addSubview(queButton)
        queButton.backgroundColor = UIColor(#colorLiteral(red: 0.9857247472, green: 0.7555300593, blue: 0.5868812799, alpha: 1))
        queButton.layer.cornerRadius = 10
        queButton.setTitle("Question", for: .normal)
        queButton.setTitleColor(UIColor.white, for: .normal)
        queButton.addTarget(self, action: #selector(getQuestion), for: .touchUpInside)
        
        // Answer
       
        view.addSubview(answer)
        answer.backgroundColor = UIColor(#colorLiteral(red: 1, green: 0.9115803838, blue: 0.764361918, alpha: 1))
        answer.textAlignment = .center
        answer.textColor = .white
        // Answer Button
        
        view.addSubview(ansButton)
        ansButton.backgroundColor = UIColor(#colorLiteral(red: 0.9857247472, green: 0.7555300593, blue: 0.5868812799, alpha: 1))
            ansButton.layer.cornerRadius = 10
        ansButton.setTitle("Answer", for: .normal)
        ansButton.setTitleColor(UIColor.white, for: .normal)
        ansButton.addTarget(self, action: #selector(getAnswer), for: .touchUpInside)
    }


    @objc func getQuestion() {
            question.text = self.questions[count] as? String
            if(count < questions.count-1)
            {
                count += 1
            }
            else
            {
                count = 0
            }
        }
    @objc func getAnswer() {
            answer.text = self.answers[count] as? String
            if(count < answers.count-1)
            {
                count += 1
            }
            else
            {
                count = 0
            }
        }
    
    


}

