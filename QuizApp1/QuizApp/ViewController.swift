//
//  ViewController.swift
//  QuizApp
//
//  Created by Najla Talal on 12/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    let mylabel = UILabel(frame: CGRect(x: 100, y: 300, width: 290, height: 30))
    let mylabelTwo = UILabel(frame: CGRect(x: 170, y: 400, width: 250, height: 30))
    let myButton = UIButton(frame: CGRect(x: 150, y: 350, width: 100, height:30))
    let myButtonTwo = UIButton(frame: CGRect(x: 150, y: 450, width: 100, height:30))
    var currentIndex = 0
    var indexTwo = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        let imageName = "image1.png"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.frame = CGRect(x:100, y: 80, width: 200, height: 200)
        self.view.addSubview(imageView)
        mylabel.text = ""
        mylabel.textColor = .black
        mylabel.textColor = .black
        self.view.addSubview(mylabel)
        mylabelTwo.text = ""
        self.view.addSubview(mylabelTwo)
        myButton.backgroundColor = .orange
        myButton.setTitle(" السؤال", for: .normal)
        myButton.addTarget(self, action: #selector(Question), for: .touchDown)
        myButtonTwo.backgroundColor = #colorLiteral(red: 0.1579762697, green: 0.308973968, blue: 0.4092453718, alpha: 1)
        myButtonTwo.setTitle(" الاجابة", for: .normal)
        myButtonTwo.addTarget(self, action: #selector(Answer), for: .touchDown)
        self.view.addSubview(myButton)
        self.view.addSubview(myButtonTwo)
        
    }
    var questionArr = [
        "اين صنعت أول كسوة للكعبة؟",
        "كم عدد الأحبال الصوتية في جسم الإنسان؟"
        ,"ماهو السبب في ظاهرة المد والجزر؟"
        ,"من هو مخترع المصباح الكهربائي؟",
        "ما هي السورة التي يطلق عليها قلب القرآن ؟"
    ]
    
    var answerArr = [
        
        "في مصر",
        "أربعة أحبال",
        "جاذبية القمر للأرض",
        "إديسون",
        "سورة يس"
    ]
    
    
    @objc func Question (){
        mylabel.text = questionArr[currentIndex]
        currentIndex += 1
        if currentIndex == questionArr.count {
            currentIndex = 0
            
        }
    }
    @objc func Answer (){
        mylabelTwo.text = answerArr[indexTwo]
        indexTwo += 1
        if indexTwo == answerArr.count {
            currentIndex = 0
            
            
        }
        
        
        
        
        
    }
    
}

