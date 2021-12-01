//
//  SecondViewController.swift
//  LifeCycle
//
//  Created by AlDanah Aldohayan on 01/12/2021.
//

import UIKit


class SecondViewController: UIViewController {
    
    let label1 = UILabel(frame: CGRect(x: 50, y: 200, width: 250, height: 40))
    let button1 = UIButton(frame: CGRect(x: 100, y: 250, width: 250, height: 40))
    let label2 = UILabel(frame: CGRect(x: 50, y: 300, width: 250, height: 40))
    let button2 = UIButton(frame: CGRect(x: 100, y: 350, width: 250, height: 40))
    
    let arr1 = ["what is inside your head?","what is the capital of KSA?","what is the capital of UAE?"]
    let arr2 = ["brain","Riyadh","Abu Dhabi"]
    
    
    @objc func operationn() {
        label1.text = arr1.randomElement()
        label2.text = "????"
        
    }
    @objc func answerr() {
        if label1.text == arr1[0] {
            label2.text = arr2[0]
        } else if label1.text == arr1[1] {
            label2.text = arr2[1]
        } else {
            label2.text = arr2[2]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        button1.setTitle("Q clicking", for: .normal)
        button1.backgroundColor = .systemPink
        button1.addTarget(self, action: #selector(operationn), for: .touchUpInside)
        
        
        label1.text = "click the Q button"
        
        
        button2.setTitle("A clicking", for: .normal)
        button2.backgroundColor = .systemPink
        button2.addTarget(self, action: #selector(answerr), for: .touchUpInside)
        
        
        label2.text = "click the A button"

        
        view.addSubview(label1)
        view.addSubview(button1)
        view.addSubview(label2)
        view.addSubview(button2)
    }
}

/*
class SecondViewController: UIViewController {

    let textField1 = UITextField(frame: CGRect(x: 70, y: 200, width: 250, height: 40))
    let textField2 = UITextField(frame: CGRect(x: 70, y: 250, width: 250, height: 40))
    let button1 = UIButton(frame: CGRect(x: 120, y: 300, width: 150, height: 40))
    let label1 = UILabel(frame: CGRect(x: 130, y: 350, width: 250, height: 40))
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("viewDidLoad2")
        view.backgroundColor = .cyan
        
        
        textField1.placeholder = "Place holder text"
        textField1.borderStyle = UITextField.BorderStyle.roundedRect
        textField1.backgroundColor = UIColor.white
        textField1.textColor = UIColor.blue
        
        
        textField2.placeholder = "Place holder text"
        textField2.borderStyle = UITextField.BorderStyle.roundedRect
        textField2.backgroundColor = UIColor.white
        textField2.textColor = UIColor.blue
        textField2.isSecureTextEntry = true
        
        button1.setTitle("click", for: .normal)
        button1.backgroundColor = .systemPink
        button1.addTarget(self, action: #selector(print1), for: .touchUpInside)
        
        
        label1.text = "Enter something"
        label1.center = self.view.center
        
        view.addSubview(textField1)
        view.addSubview(textField2)
        view.addSubview(button1)
        view.addSubview(label1)
        
    }
    @objc func print1 () {
        if textField1.text == "AAA" && textField2.text == "123" {
            label1.text = "logged successfully"
        } else {
            label1.text = "logged failed"
        }
    }
//    override func viewWillAppear(_ animated: Bool) {
//        print("viewWillAppear2")
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        print("viewDidAppear2")
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        print("viewWillDisappear2")
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        print("viewDidDisappear2")
//    }
}
 */
