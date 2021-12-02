//
//  ViewController.swift
//  QuizProject
//
//  Created by Wejdan Alkhaldi on 27/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let myLabel = UILabel(frame: CGRect(x: 50, y: 300, width: 300, height: 20))
    let myLabel2 = UILabel(frame: CGRect(x: 50, y: 450, width: 300, height: 20))
    let myButton = UIButton(frame: CGRect(x: 150, y: 350, width: 100, height: 25))
    let myButton2 = UIButton(frame: CGRect(x: 150, y: 500, width: 100, height: 25))
    
    var currentIndex = 0
    var nextindex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        let imgname = "Quiz"
        let image = UIImage(named: imgname)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x:100, y: 100, width: 200, height: 170)
        self.view.addSubview(imageView)
        myLabel.text = ""
        myLabel.textColor = .black
        myLabel.textAlignment = .center
        view.addSubview(myLabel)
        myLabel2.text = ""
        myLabel2.textColor = .black
        myLabel2.textAlignment = .center
        view.addSubview(myLabel2)
        
        myButton.setTitle("السؤال", for: .normal)
        myButton.backgroundColor = #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)
        myButton.addTarget(self, action: #selector(QuestionQuiz), for: .touchDown)
        myButton2.setTitle("الاجابة", for: .normal)
        myButton2.backgroundColor = #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1)
        myButton2.addTarget(self, action: #selector(AnswerQuiz), for: .touchDown)
        self.view.addSubview(myButton)
        self.view.addSubview(myButton2)
    }
    var Arrquestion = [
        "تعتبر لغة البرمجة C من الامثلة على؟",
        "اذكر واحدة من اللغات منخفضة المستوى؟"
        ,"ماهو عقل الكمبيوتر؟"
        ,"ماهي لغة الحاسب ؟",
        " حول  (10011011) العدد الى النظام العشري" ,
        "ماذا يقصد ب OOP ؟ " ,
    ]
    var Arranswer = [
        
        "لغات البرمجة عالية المستوى",
        "Assembly Language",
        "CPU وحدة المعالجة المركزية",
        "binary number",
        "155",
        "object oriented programming"
        
    ]
    
    @objc func QuestionQuiz (){
        myLabel2.text = "???"
        myLabel.text = Arrquestion[currentIndex]
        currentIndex += 1
        if currentIndex == Arrquestion.count {
            currentIndex = 0
            
        }
    }
    @objc func AnswerQuiz (){
        myLabel2.text = Arranswer[nextindex]
        nextindex += 1
        if nextindex == Arranswer.count {
            currentIndex = 0
            nextindex = 0
            
            
        }
        
        
        
        
    }
}
