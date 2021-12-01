//
//  ViewController.swift
//  QuizApp
//
//  Created by nouf on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    var label = UILabel(frame: CGRect(x: 98, y:133, width: 219, height: 53))
    var labelQuestions = UILabel(frame: CGRect(x: 98, y:214, width: 220 , height: 50))
    var labelAnswer = UILabel(frame:CGRect(x: 98, y:272 , width: 220 , height:50))
    
    
    var buttomQuestions = UIButton(frame: CGRect(x:218, y: 358, width: 134 , height: 55))
    var buttomAnswer = UIButton(frame: CGRect(x:62 , y: 358, width: 134 , height: 55))
    
    var labelText = UILabel(frame: CGRect(x:62 , y: 470, width: 290 , height: 38))
    var imageViwe  = UIImageView(frame: CGRect(x:62 , y: 533, width: 290 , height: 280))
    
    var Answer  = ""
    var number1 = 0
    var number2 = 0
    var answerPlus = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        
        view.addSubview(label)
        label.text = "اجمع العددين"
        label.textAlignment = .center
        label.font = label.font.withSize(25)
        
        
        view.addSubview(labelQuestions)
        labelQuestions.text = ""
        labelQuestions.textAlignment = .center
        labelQuestions.font = labelQuestions.font.withSize(41)
        
        
        
        view.addSubview(buttomQuestions)
        buttomQuestions.setTitle("السؤال", for: .normal)
        buttomQuestions.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        buttomQuestions.addTarget(self, action: #selector(questions) , for: .touchDown )
        
        
        view.addSubview(labelAnswer)
        labelAnswer.text = ""
        labelAnswer.textAlignment = .center
        labelAnswer.font = labelAnswer.font.withSize(41)
        
        view.addSubview(buttomAnswer)
        buttomAnswer.setTitle("الاجابة", for: .normal)
        buttomAnswer.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        buttomAnswer.addTarget(self, action: #selector(answer) , for: .touchDown )
        
        
        view.addSubview(labelText)
        labelText.textAlignment = .center
        labelText.font = labelText.font.withSize(25)
        
        view.addSubview(imageViwe)
        
        
        
    }
    
    @objc func questions(){
        number1 = Int.random(in: 0...10)
        number2 = Int.random(in: 0...10)
        answerPlus = number1 + number2
        
        labelQuestions.text = "\(number1) + \(number2)"
        labelAnswer.text = ""
        labelText.text = ""
        imageViwe.image = .none
    }
    
    
    @objc func answer(){
        var textField = UITextField()
        let alert = UIAlertController( title: "", message: "اكتب اجابتك", preferredStyle: .alert)
        alert.addTextField { alertTextFild in
            alertTextFild.placeholder = "الاجابة"
            textField = alertTextFild
        }
        
        let action = UIAlertAction(title: "حفظ", style: .default){ [self] action in
            self.Answer = textField.text!
            self.labelAnswer.text = self.Answer
            imageViwe(userAnswer: labelAnswer.text!, rightAnswer: answerPlus)
        }
        
        alert.addAction(action)
        alert.addAction(UIAlertAction(title: "الغاء", style: .cancel , handler: nil ))
        present(alert, animated: true , completion: nil)
        
        
    }
    
    
    func imageViwe(userAnswer : String , rightAnswer :Int) {
        if Int(userAnswer) == rightAnswer {
            imageViwe.image = UIImage(named: "Happy1")
            labelText.text = " إجابة صحيحة .."
        } else {
            imageViwe.image = UIImage(named: "Sad")
            labelText.text = "إجابة خاطئة .."
        }
    }
    
    
    
}


