//
//  ViewController.swift
//  QuizApp
//
//  Created by Ahmad MacBook on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let view1 = UIView()
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let button1 = UIButton()
    let button2 = UIButton()
    
    var arr1 : [String] = ["5 X 6 ?","9 X 7 ?","2 X 4 ?","2234 - 1568 ?","10 / 2"]
    var arr2 : [String] = ["30","63","8","666","5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(view1)
        view1.frame = CGRect(x: 0, y: 0, width: 500, height: 1000)
        view1.backgroundColor = .white
        
        view1.addSubview(label1)
        label1.frame = CGRect(x: 110, y: 50, width: 200, height: 100)
        label1.text = "Quiz App"
        label1.font = UIFont.systemFont(ofSize: 30)
        label1.textAlignment = .center
        label1.tintColor = .black
        
        
        view1.addSubview(label2)
        label2.frame = CGRect(x: 20, y: 200, width: 400, height: 100)
        label2.text = "Questions start when you click on the first button"
        label2.textAlignment = .left
        label2.tintColor = .black
        
        view1.addSubview(button1)
        button1.frame = CGRect(x: 70, y: 400, width: 300, height: 50)
        button1.backgroundColor = .blue
        button1.setTitle("Show the next Qustion", for: .normal)
        button1.layer.cornerRadius = 20
        button1.addTarget(self, action: #selector(nextQuestion) , for: .touchDown)
        
        
        view1.addSubview(label3)
        label3.frame = CGRect(x: 70, y: 500, width: 300, height: 100)
        label3.text = "******************************"
        label3.textAlignment = .left
        label3.tintColor = .black
        
        
        view1.addSubview(button2)
        button2.frame = CGRect(x: 70, y: 700, width: 300, height: 50)
        button2.backgroundColor = .blue
        button2.setTitle("Show the Answer", for: .normal)
        button2.layer.cornerRadius = 20
        button2.addTarget(self, action: #selector(ShowQuestion) , for: .touchDown)
        
    }
    
    var counter = 0
    
    @objc func nextQuestion(){
        counter += 1
        if counter < arr1.count {
            label2.textAlignment = .center
            label2.text = arr1[counter]
            label3.text = "******************************"
            
        }else {
            counter = 0
            label2.text = arr1[counter]
        }
    }
    
    @objc func ShowQuestion(){
        label3.text = arr2[counter]
        label3.textAlignment = .center
    }
}


