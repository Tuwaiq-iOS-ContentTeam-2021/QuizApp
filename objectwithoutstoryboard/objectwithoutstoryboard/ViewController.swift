//
//  ViewController.swift
//  objectwithoutstoryboard
//
//  Created by esho on 26/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let questions = ["1.What year was Swift language released?",
                     "2. Is Swift open source?",
                     "3. What is the keyword for print a word in Xcode??",
                     "4. What is the meaning of question mark (?) in Swift?",
                     "5. What is the tag used to write a comment in Xcode?"]
    
        let answers = ["2014" ,
                       "yes" ,
                       "print" ,
                       "optional"
                       , "//"]
    
    var currentQuestion = 0
    var coreectAnswer = 0
    
let lableQuestion = UILabel(frame: CGRect(x: 10 , y: 150, width: 370, height: 100))
    
    let buttonQuesstion = UIButton(frame: CGRect(x: 120 , y: 270, width: 150, height: 30))

    
    let lableAnswer = UILabel(frame: CGRect(x: 50 , y: 600, width: 300, height: 50))

    let buttonShowAnswer = UIButton(frame: CGRect(x: 120 , y: 500, width: 150, height: 30))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        //lableQuesstion
        lableQuestion.backgroundColor = .white
        lableQuestion.text = "All Question For swift  "
        view.addSubview(lableQuestion)
        
        
        
        //button show Quesstion
        
        buttonQuesstion.setTitle("New Question", for: .normal)
        buttonQuesstion.backgroundColor = #colorLiteral(red: 0.6405970454, green: 0.8087861538, blue: 0.7717835903, alpha: 1)
        buttonQuesstion.addTarget(self, action: #selector (nextQuestion), for: .touchDown)
        view.addSubview(buttonQuesstion)
        
        
     

        
        
        //Button Show Answer
        buttonShowAnswer.setTitle("Show Answer", for: .normal)
        buttonShowAnswer.backgroundColor = #colorLiteral(red: 0.6405970454, green: 0.8087861538, blue: 0.7717835903, alpha: 1)
        buttonShowAnswer.addTarget(self, action: #selector (nextAnswer), for: .touchDown)
        view.addSubview(buttonShowAnswer)
        
        
        
        
        // lable Correct Answer
        lableAnswer.backgroundColor = .white
        
              view.addSubview(lableAnswer)
        
        
        

        
   
    
    }

  
    @objc func nextQuestion() {
        
        if currentQuestion <= 4 {
         lableQuestion.text = questions[currentQuestion]

         
         currentQuestion += 1
        } else {
            lableQuestion.text = "finsh the Question"

        }
     }
    @objc func nextAnswer() {
        
        lableAnswer.text = answers[coreectAnswer]

        coreectAnswer += 1

        
    }
    
}

