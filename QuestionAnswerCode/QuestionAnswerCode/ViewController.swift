//
//  ViewController.swift
//  QuestionAnswerCode
//
//  Created by Areej on 26/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    let QLable = UILabel(frame: CGRect(x: 250, y: 200, width: 500, height: 50))
    let ALable = UILabel(frame: CGRect(x: 250, y: 300, width: 500, height: 50))
    let Qbutton = UIButton(frame: CGRect(x: 220, y: 500, width: 150, height: 50))
    let Abutton = UIButton(frame: CGRect(x: 20, y: 500, width: 150, height: 50))
    let img = UIImageView (frame: CGRect(x: 0, y: 0, width: 400, height: 900))
    let segment = UISegmentedControl(items:  ["رياضة","ثقافة","تاريخ"] )
    var Qestions = ["ما لون السماء؟"," ما لون الشمس؟","ما لون الجبل"]
    var answers = ["ازرق","اصفر","بني"]
    
    
    override func viewDidLoad() {
       
        QLable.text = "جرب سؤال"
        ALable.text = "عرض الإجابة"
        QLable.textColor = .darkGray
        ALable.textColor = .darkGray
        Qbutton.setTitle("جرب", for: .normal)
        Abutton.setTitle("عرض", for: .normal)
        Qbutton.backgroundColor = .blue
        Qbutton.layer.cornerRadius = 20
        Abutton.layer.cornerRadius = 20
        Abutton.backgroundColor = .blue
        segment.backgroundColor = .white
        img.image = UIImage(named: "theme")
        img.alpha = 0.4
        
        
        Qbutton.addTarget(self, action: #selector(questionfunction), for: .touchDown)
        Abutton.addTarget(self, action: #selector(answerfunction), for: .touchDown)
        Abutton.isEnabled = false
        view.addSubview(QLable)
        view.addSubview(ALable)
        view.addSubview(Qbutton)
        view.addSubview(Abutton)
        view.addSubview(segment)
        view.addSubview(img)
        
        segment.layer.position = .init(x: 200, y: 100)
        
        super.viewDidLoad()
        
    }
    @objc func questionfunction(){
        QLable.text = Qestions.first
        ALable.text = "????"
        if !Qestions.isEmpty {
            Qestions.removeFirst()
            
        }
        else {
            QLable.text = "انتهت الاسئلة"
        }
        Abutton.isEnabled = true//next Answer is allowed
        Qbutton.isEnabled = false //next Question is not allowed until entring answer
    }
    @objc func answerfunction(){
        Qbutton.isEnabled = true
        
        if !answers.isEmpty {
            ALable.text = answers.first
            answers.removeFirst()
        }
        else {
            ALable.text = "الى اللقاء"
        }
       
        Abutton.isEnabled = false
    }
}

