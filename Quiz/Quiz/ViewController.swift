//
//  ViewController.swift
//  Quiz
//
//  Created by Taraf Bin suhaim on 26/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    let arrayQuestion = ["What is the capital of KSA?" , "What is the result of 8*8?" , "What is the favorite color?"]
    let arrayAnswers = ["Riyad","64" , "Black"]
    var index = 0
    var currentIndex = 0
    
    let myView = UIView(frame: CGRect(x: 40, y: 100, width: 350, height: 200))
    let questionLabel = UILabel(frame: CGRect(x: 40, y: 100, width: 350, height: 35))
    let questionButton = UIButton(frame: CGRect(x: 120, y: 250, width: 200, height: 35))
    
    let myView1 = UIView(frame: CGRect(x: 40, y: 350, width: 350, height: 200))
    let answerLabel = UILabel(frame: CGRect(x: 40, y: 350, width: 350, height: 35))
    let answerButton = UIButton(frame: CGRect(x: 120, y: 500, width: 200, height: 35))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "bg")
        backgroundImage.contentMode =  UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        
        //myView
        myView.backgroundColor = #colorLiteral(red: 0.9569502473, green: 0.8758154511, blue: 1, alpha: 1)
        view.addSubview(myView)
        
        //myView1
        myView1.backgroundColor = #colorLiteral(red: 0.9569502473, green: 0.8758154511, blue: 1, alpha: 1)
        view.addSubview(myView1)

        
        //questionLabel
        questionLabel.setUpLabel("Click on Question ",#colorLiteral(red: 0.9569502473, green: 0.8758154511, blue: 1, alpha: 1) , 20, .medium, .left)
        view.addSubview(questionLabel)
        
        //questionButton
        questionButton.setUpButton("Question", .black,#colorLiteral(red: 0.8987026215, green: 0.8244304061, blue: 0.9547646642, alpha: 1) , 10)
        questionButton.addTarget(self, action: #selector (question), for: .touchDown)
        view.addSubview(questionButton)
        
        //answerLabel
        answerLabel.setUpLabel("Click on Answer ", #colorLiteral(red: 0.9569502473, green: 0.8758154511, blue: 1, alpha: 1), 20, .medium, .left)
        view.addSubview(answerLabel)
        
        //answerButton
        answerButton.setUpButton("Answer", .black,#colorLiteral(red: 0.8987026215, green: 0.8244304061, blue: 0.9547646642, alpha: 1) , 10)
        answerButton.addTarget(self, action: #selector (answer), for: .touchDown)
        view.addSubview(answerButton)
    }
    
  
    
    @objc func question(){
        questionLabel.text = arrayQuestion[index]
        answerLabel.text = "??"
        index += 1
        if index == arrayQuestion.count {
            index = 0
        }
    }
    @objc func answer(){
        answerLabel.text = arrayAnswers[currentIndex]
        currentIndex += 1
        if currentIndex == arrayAnswers.count {
            currentIndex = 0
        }
    }
}

extension UILabel {
    func setUpLabel(_ titleOfText:String ,_ color:UIColor ,_ sizeOfText:CGFloat ,_ widthOfText:UIFont.Weight , _ textAlign:NSTextAlignment){
        text = titleOfText
        backgroundColor = color
        font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: sizeOfText , weight: widthOfText ))
        textAlignment = textAlign
    }
}

extension UIButton{
    func setUpButton(_ title:String ,_ titleColor:UIColor ,_ color:UIColor , _ cornerRad:CGFloat){
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        backgroundColor = color
        layer.cornerRadius = cornerRad
    }
}

