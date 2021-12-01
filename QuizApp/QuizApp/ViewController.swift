//
//  ViewController.swift
//  QuizApp
//
//  Created by Areej Mohammad on 26/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let questionLabel = UILabel(frame: CGRect(x: 45, y: 50, width: 300, height: 100))
    let questionButton = UIButton (frame: CGRect(x: 70, y: 150, width: 250, height: 50))
    let answerLabel = UILabel(frame: CGRect(x: 70, y: 250, width: 250, height: 50))
    let answerButton = UIButton(frame: CGRect(x: 70, y: 300, width: 250, height: 50))
    let answerImage = UIImageView(frame: CGRect(x: 20, y: 400, width: 350, height: 400))
    
    let question = ["ماهي المدينة التي تسمى مدينة الضباب ؟"
                    ,"ماهي أصغر الدول العربية من حيث المساحة؟"
                    ,"ماهو اسم اطول نهر في العالم ؟"
                    ,"ماذا يأكل الباندا؟ "
                    ,"ماهو الطير الذي يستخدم كرمز للسلام؟"]
    let answer = ["لندن","البحرين","نهر النيل ","الخيزران","الحمامه"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        questionButton.setTitle("السؤال التالي", for: .normal)
        questionButton.backgroundColor = #colorLiteral(red: 0.2179671824, green: 0.4871314168, blue: 0.3615005612, alpha: 1)
        questionButton.layer.cornerRadius = 10
        questionButton.addTarget(self, action: #selector (showQuestion), for: .touchDown)
        
        questionLabel.text = "السؤال"
        questionLabel.textAlignment = .center
        questionLabel.lineBreakMode = .byClipping
        
        answerButton.setTitle("اظهار الجواب", for: .normal)
        answerButton.backgroundColor = #colorLiteral(red: 0.2189584374, green: 0.4884681702, blue: 0.3591463566, alpha: 1)
        answerButton.layer.cornerRadius = 10
        answerButton.addTarget(self, action: #selector (showAnswer), for: .touchDown)
        
        answerLabel.text = "الإجابة"
        answerLabel.textAlignment = .center
        
        answerImage.image = UIImage(named: "0")
        
        view.addSubview(questionLabel)
        view.addSubview(answerLabel)
        view.addSubview(answerButton)
        view.addSubview(questionButton)
        view.addSubview(answerImage)
    }
    @objc func showQuestion () {
        questionLabel.text = question.randomElement()
        answerLabel.text = "??"
        answerImage.image = UIImage(named: "0")

    }
    
    @objc func showAnswer () {
        if questionLabel.text == "ماهي المدينة التي تسمى مدينة الضباب ؟" {
            answerLabel.text = answer[0]
            answerImage.image = UIImage(named: "1")
        }else if questionLabel.text == "ماهي أصغر الدول العربية من حيث المساحة؟" {
            answerLabel.text = answer[1]
            answerImage.image = UIImage(named: "5")
        }else if questionLabel.text == "ماهو اسم اطول نهر في العالم ؟" {
            answerLabel.text = answer[2]
            answerImage.image = UIImage(named: "3")
        }else if questionLabel.text ==  "ماذا يأكل الباندا؟ " {
            answerLabel.text = answer[3]
            answerImage.image = UIImage(named: "2")
        }else if questionLabel.text == "ماهو الطير الذي يستخدم كرمز للسلام؟" {
            answerLabel.text = answer[4]
            answerImage.image = UIImage(named: "4")
        }else{
            answerLabel.text = "الاجابه"
            answerImage.image = UIImage(named: "0")
        }
        
    }
}
