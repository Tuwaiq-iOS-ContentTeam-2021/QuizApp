//
//  ViewController.swift
//  QuizApp
//
//  Created by Qahtani's MacBook Pro on 12/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    var arryQuestion = ["ما اسم أقدم الخطوط العربية؟","ما هو أغلى معدن بالعالم؟","ما أصل كلمة أطلس؟","من هو مخترع الكرة الطائرة؟  " ]
    var arryAnswer = ["الخط الكوفي"," الراديوم", "يوناني" ,"ويليام مورغان."]
    
   var counter = 0
    
    let labelQuestion = UILabel(frame: CGRect(x: 50, y: 200, width: 300, height: 40))
    let buttonQus = UIButton(frame: CGRect(x: 50, y: 250, width: 300, height: 30))
    
    let buttonAns = UIButton(frame: CGRect(x: 50, y: 300, width: 300, height: 30))
    let labelAnswer = UILabel(frame: CGRect(x: 50, y: 350, width: 300, height: 40))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelQuestion.text = arryQuestion[0]
        
        labelQuestion.backgroundColor = .orange
        view.addSubview(labelQuestion)
        
        buttonQus.addTarget(self, action: #selector(foo), for: .touchDown)
        buttonQus.backgroundColor = .red
        buttonQus.setTitle("cllick Qus", for: .normal)
        view.addSubview(buttonQus)
        
        buttonAns.addTarget(self, action: #selector(too), for: .touchDown)
        buttonAns.backgroundColor = .red
        buttonAns.setTitle("cllick Ans", for: .normal)
        view.addSubview(buttonAns)
    
        
        labelAnswer.backgroundColor = .orange
        labelAnswer.textAlignment = .center
         
        view.addSubview(labelAnswer)
        
        view.backgroundColor = .darkGray
        
    }
    @objc func foo(){
        
        counter += 1
        if counter < arryQuestion.count{
            labelQuestion.text = arryQuestion[counter]
        }else{
            counter = 0
            labelQuestion.text = arryQuestion[counter]
        }

        
    }
    @objc func too(){
        
        labelAnswer.text = arryAnswer[counter]
        

        
    }

}

