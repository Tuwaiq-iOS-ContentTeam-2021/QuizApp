//
//  ViewController.swift
//  quzeApp
//
//  Created by TAGHREED on 27/04/1443 AH.
//

import UIKit



class ViewController: UIViewController {
    
    var qLable = UILabel()
    var aLable = UILabel()
    var qButton = UIButton()
    var aButton = UIButton()
    var x = 0
    var y = 0
 


    let qArray = ["7*2 = ","9/3 = ","8+4 = ","5-9 = ","6*6 = "]
    let aArray = ["14","3","12","-4","36"]


    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
        qLable.frame = CGRect(x: 150, y: 400 , width: 200, height: 50)
        qLable.font = UIFont.boldSystemFont(ofSize: 50)
        view.addSubview(qLable)
        qLable.textColor = #colorLiteral(red: 0.2658072412, green: 0.2762423158, blue: 0.2716650367, alpha: 1)
        
        aLable.frame = CGRect(x: 120 , y: 600 , width: 170, height: 50)
        view.addSubview(aLable)
        aLable.textAlignment = NSTextAlignment.center
        
        qButton.frame = CGRect(x: 120 , y: 500 , width: 170, height: 40)
        qButton.backgroundColor = #colorLiteral(red: 0.3022810817, green: 0.3977753818, blue: 0.3428295553, alpha: 1)
        view.addSubview(qButton)
        qButton.addTarget(self, action: #selector(qButtonfunc), for: .touchDown)
        qButton.setTitle("START QUSTIONS", for: .normal)
        qButton.layer.cornerRadius = 10
        
        aButton.frame = CGRect(x: 130 , y: 700 , width: 150, height: 40)
        aButton.backgroundColor = #colorLiteral(red: 0.3022810817, green: 0.3977753818, blue: 0.3428295553, alpha: 1)
        view.addSubview(aButton)
        aButton.addTarget(self, action: #selector(aButtonfunc), for: .touchDown)
        aButton.setTitle("SHOW ANSWER", for: .normal)
        aLable.backgroundColor = #colorLiteral(red: 0.5766313672, green: 0.7593675256, blue: 0.654466331, alpha: 1)
        aButton.layer.cornerRadius = 10
        aButton.isEnabled = false
        
        
        view.backgroundColor = #colorLiteral(red: 0.8590183854, green: 1, blue: 0.9198970199, alpha: 1)
       
        
 
        let plusView = UIImageView(image: UIImage(systemName: "plus"))
        plusView.frame = CGRect(x: 240 , y: 280 , width: 100, height: 100)
        plusView.tintColor = #colorLiteral(red: 0.8842189908, green: 0.8190028071, blue: 0.5328581333, alpha: 1)
        view.addSubview(plusView)

//        let equalView = UIImageView(image: UIImage(systemName: "equal"))
//        equalView.frame = CGRect(x: 300 , y: 300 , width: 100, height: 70)
//        equalView.tintColor = .gray
//        view.addSubview(equalView)

        let minusView = UIImageView(image: UIImage(systemName: "minus"))
        minusView.frame = CGRect(x: 240 , y: 190 , width: 100, height: 30)
        minusView.tintColor = .gray
        view.addSubview(minusView)

        let multiplyView = UIImageView(image: UIImage(systemName: "multiply"))
        multiplyView.frame = CGRect(x: 80 , y: 150 , width: 100, height: 100)
        multiplyView.tintColor = #colorLiteral(red: 1, green: 0.8117234707, blue: 1, alpha: 1)
        view.addSubview(multiplyView)

        let divideView = UIImageView(image: UIImage(systemName: "divide"))
        divideView.frame = CGRect(x: 80 , y: 280 , width: 100, height: 100)
        divideView.tintColor = .gray
        view.addSubview(divideView)
        
        
    }

    
    
   
    @objc func qButtonfunc() {
        
        if x <= 4 {
        qLable.text = qArray[x]
        aLable.text = "???"
        
            x += 1 }
        else if x >= 4{
            x = 0
            qLable.text = qArray[x]
            aLable.text = "???"
                x += 1
            }
        qButton.setTitle("NEXT", for: .normal)
        aButton.isEnabled = true
        qButton.isEnabled = false
    }
    
    
    @objc func aButtonfunc() {
        
        if y <= 4  {
        aLable.text = aArray[y]
        
            y += 1 }
        else if y >= 4 {
            y = 0
            aLable.text = aArray[y]
            y += 1
            }
        aButton.isEnabled = false
        qButton.isEnabled = true
        
    }
    
    
    
    
    
    
}

