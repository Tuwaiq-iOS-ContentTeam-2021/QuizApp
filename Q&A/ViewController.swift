//
//  ViewController.swift
//  Q&A
//
//  Created by Nora on 26/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let lebel1 = UILabel()
    let lebel2 = UILabel()
    let Button1 = UIButton()
    let Button2 = UIButton()
    var Questions = ["what is it the capital city of saudi arabia?",
                     "which one is smallest ocean in the world?",
                     "In which countory white elephant is found?",
                     "Total number of oceans in the world is?",
                     "Brain of computer is?"]
    
    var Answers = ["Riyadh",
                   "Arctic",
                   "Thailand",
                   "5",
                   "CPU" ]


    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        lebel1.frame = CGRect(x: 50, y: 100, width: 400, height: 20)
        lebel1.text = "Question"
        lebel1.textColor = .gray
        lebel1.numberOfLines = 0
        lebel1.translatesAutoresizingMaskIntoConstraints = false
        lebel1.lineBreakMode = .byWordWrapping
        
        
        
        Button1.frame = CGRect(x: 130, y: 200, width: 150, height: 40)
        Button1.setTitle("Next Question", for: .normal)
        Button1.backgroundColor = #colorLiteral(red: 0.8048695922, green: 0.5923626423, blue: 0.6724125743, alpha: 1)
        Button1.layer.cornerRadius = 15
        Button1.addTarget(self, action: #selector(question), for: .touchDown)
        
        
        lebel2.frame = CGRect(x: 50, y: 320, width: 400, height: 20)
        lebel2.text = "Answer"
        lebel2.textColor = .gray
        
        
        Button2.frame = CGRect(x: 130, y: 500, width: 150, height: 40)
        Button2.setTitle("Show Answer", for: .normal)
        Button2.backgroundColor = #colorLiteral(red: 0.8048695922, green: 0.5923626423, blue: 0.6724125743, alpha: 1)
        Button2.layer.cornerRadius = 15
        Button2.addTarget(self, action: #selector(answer), for: .touchDown)
        
        view.addSubview(lebel1)
        view.addSubview(lebel2)
        view.addSubview(Button1)
        view.addSubview(Button2)

    }
    
    @objc func question() {
        
        if let element = Questions.randomElement() {
        lebel1.text = element
        }

     }
  
    @objc func answer() {
        let Answers = ["Riyadh","Arctic", "Thailand", "5","CPU" ]
        if lebel1.text == Questions[0] {
            lebel2.text = Answers[0]
        }
        else if lebel1.text == Questions[1] {
            lebel2.text = Answers[1]
            
        }
        else if lebel1.text == Questions[2] {
            lebel2.text = Answers[2]
            
        }
        else if lebel1.text == Questions[3] {
            lebel2.text = Answers[3]
            
        }
        else if lebel1.text == Questions[4] {
            lebel2.text = Answers[4]
            
        }

     }

}

