//
//  ViewController.swift
//  Quiz App
//
//  Created by mac on 01/12/2021.
//

import UIKit
import SCLAlertView
class ViewController: UIViewController {

    var arrQuestions: [String] = [
        "How many of the companions have been promised paradise?",
        "Of which companion did the Prophet say, “If there was to be a Prophet after Me, it would have been you”?",
        "What is the calendar which Muslims use?",
        "How many SURAH are in Quraan?",
        "What is the name of Prophet Muhammed mother?"]
    
    var arrAnswers: [String] = [
        "Ten",
        "Omar Bin Al-Khatab",
        "Hijrah",
        "114",
        "Aminah bint Wahb"]
    

        
        
    
    
    
    var titleLable = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 40))
    
    var questionLable = UILabel(frame: CGRect(x: 20, y: 260, width: 400, height: 60))
    
    let pickerTextField = UITextField(frame: CGRect(x: 20, y: 300, width: 220, height: 35))
    
    let changeQuestionBtn = UIButton(frame: CGRect(x: 100, y: 350, width: 180, height: 35))
    
    var answerLable = UILabel(frame: CGRect(x: 20, y: 550, width: 400, height: 40))
    
    let showAnswerBtn = UIButton(frame: CGRect(x: 100, y: 630, width: 180, height: 35))
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.891656816, green: 0.9256322384, blue: 0.8796543479, alpha: 0.8980392157)
        // title lable
        titleLable.text = "Islamic Quiz"
        titleLable.textAlignment = .center
        titleLable.font = .boldSystemFont(ofSize: 30)
        titleLable.textColor = .black
        view.addSubview(titleLable)
        
        // question lable
        questionLable.text = "Click the button to get your first question"
        questionLable.font = .boldSystemFont(ofSize: 16)
        questionLable.textColor = .black
        questionLable.numberOfLines = 0
        view.addSubview(questionLable)
        
        // picker textField
        // picker view
        
        
        // change question button
        changeQuestionBtn.setTitle("Get new question", for: .normal)
        changeQuestionBtn.backgroundColor = #colorLiteral(red: 0.636657536, green: 0.7293419242, blue: 0.6464065909, alpha: 0.8980392157)
        changeQuestionBtn.layer.cornerRadius = 15
        changeQuestionBtn.addTarget(self, action: #selector(changeQuestion), for: .touchDown)
        view.addSubview(changeQuestionBtn)
        
        // answer lable
        answerLable.text = "Click the button to get the answer"
        answerLable.font = .boldSystemFont(ofSize: 16)
        answerLable.textColor = .black
        answerLable.numberOfLines = 0
        view.addSubview(answerLable)
        
        // show answer button
        showAnswerBtn.setTitle("Show Answer", for: .normal)
        showAnswerBtn.backgroundColor = #colorLiteral(red: 0.636657536, green: 0.7293419242, blue: 0.6464065909, alpha: 0.8980392157)
        showAnswerBtn.layer.cornerRadius = 15
        showAnswerBtn.addTarget(self, action: #selector(showAnswer), for: .touchDown)
        view.addSubview(showAnswerBtn)
    }


    @objc func changeQuestion() {
        if !arrQuestions.isEmpty {
        questionLable.text = arrQuestions.first
        }
        linkedList(array: &arrQuestions)
        linkedList(array: &arrAnswers)
        answerLable.text = "??"
    }

    @objc func showAnswer() {
        if questionLable.text == "Click the button to get your first question" {
            answerLable.text = "Get a question first"
        } else {
        answerLable.text = arrAnswers.last
        }
    }

    
}

extension ViewController {
    
    func linkedList(array: inout[String]) {
        var firstElemnt = ""
        firstElemnt = array.first!
        array.remove(at: 0)
        array.append(firstElemnt)
    }
    
    
}

