//
//  ViewController.swift
//  Quiz App
//
//  Created by mac on 01/12/2021.
//

import UIKit
import SCLAlertView

class ListArray {
    
    var question: String?
    var answer: String?
    var rightAnswer: String?
    
    init(dict: [String: String]) {
        self.question = dict["question"]
        self.answer = dict["answer"]
        self.rightAnswer = dict["rightAnswer"]
    }
}

class ViewController: UIViewController {

    var questions = [ListArray]()
    
    func addQuestion() {
        questions.append(ListArray(dict: ["question":"How many of the companions have been promised paradise?", "answer":"Twenty,Ten,Eleven", "rightAnswer":"Ten"]))
        
        questions.append(ListArray(dict: ["question":"Of which companion did the Prophet say, “If there was to be a Prophet after Me, it would have been you”?", "answer":"Omar Bin Al-Khatab,Abo Bakr Alsdeeq,Ali Bin Abi Talb", "rightAnswer":"Omar Bin Al-Khatab"]))
        
        questions.append(ListArray(dict: ["question":"What is the calendar which Muslims use?", "answer":"miladi,Hijrah,None of the above", "rightAnswer":"Hijrah"]))
        
        questions.append(ListArray(dict: ["question":"How many SURAH are in Quraan?", "answer":"116,119,114", "rightAnswer":"114"]))
        
        questions.append(ListArray(dict: ["question":"What is the name of Prophet Muhammed mother?", "answer":"Aisha,Aminah,None of the above", "rightAnswer":"Aisha"]))
    }
    
    
    var counter: Int = 0
    
    
    var titleLable = UILabel(frame: CGRect(x: 100, y: 100, width: 250, height: 40))
    
    var questionLable = UILabel(frame: CGRect(x: 20, y: 200, width: 370, height: 100))
    
    let pickerTextField = UITextField(frame: CGRect(x: 20, y: 300, width: 370, height: 35))
    
    let submitAnswerBtn = UIButton(frame: CGRect(x: 140, y: 370, width: 110, height: 35))
    
//    let resultLable = UILabel(frame: CGRect(x: 100, y: 340, width: 200, height: 35))
    
    let changeQuestionBtn = UIButton(frame: CGRect(x: 100, y: 420, width: 180, height: 35))
    
    var answerLable = UILabel(frame: CGRect(x: 20, y: 550, width: 400, height: 40))
    
    let showAnswerBtn = UIButton(frame: CGRect(x: 100, y: 600, width: 180, height: 35))
    
    var pickerView = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [
            UIColor.systemIndigo.cgColor,
            UIColor.systemPurple.cgColor
        ]
        view.layer.addSublayer(gradientLayer)
        
        // title lable
        titleLable.text = "Islamic Quiz"
        titleLable.textAlignment = .center
        titleLable.font = .boldSystemFont(ofSize: 40)
        titleLable.textColor = .white
        view.addSubview(titleLable)
        
        // question lable
        questionLable.text = "Click \"Get new question\" Button to get your first question"
        questionLable.textAlignment = .center
        questionLable.font = .boldSystemFont(ofSize: 20)
        questionLable.textColor = .white
        questionLable.numberOfLines = 0
        view.addSubview(questionLable)
        
        // picker textField
        pickerTextField.placeholder = "choose answer"
        pickerTextField.borderStyle = .roundedRect
        pickerTextField.textAlignment = .center
        view.addSubview(pickerTextField)
        
        //submit Answer button
        
        submitAnswerBtn.setTitle("Submit", for: .normal)
        submitAnswerBtn.backgroundColor = .systemIndigo
        submitAnswerBtn.layer.cornerRadius = 15
        submitAnswerBtn.addTarget(self, action: #selector(result), for: .touchDown)
        view.addSubview(submitAnswerBtn)
        
        // result lable
//        resultLable.text = "lable"
//        resultLable.font = .boldSystemFont(ofSize: 14)
//        resultLable.textColor = .black
//        view.addSubview(resultLable)
        
        // picker view
        pickerView.delegate = self
        pickerView.dataSource = self
        
        pickerTextField.inputView = pickerView
        
        
        // change question button
        changeQuestionBtn.setTitle("Get new question", for: .normal)
        changeQuestionBtn.backgroundColor = .systemIndigo
        changeQuestionBtn.layer.cornerRadius = 15
        changeQuestionBtn.addTarget(self, action: #selector(changeQuestion), for: .touchDown)
        view.addSubview(changeQuestionBtn)
        
        // answer lable
        answerLable.text = "Click the button to get the answer"
        answerLable.font = .boldSystemFont(ofSize: 17)
        answerLable.textColor = .white
        answerLable.numberOfLines = 0
        view.addSubview(answerLable)
        
        // show answer button
        showAnswerBtn.setTitle("Show Answer", for: .normal)
        showAnswerBtn.backgroundColor = .systemIndigo
        showAnswerBtn.layer.cornerRadius = 15
        showAnswerBtn.addTarget(self, action: #selector(showAnswer), for: .touchDown)
        view.addSubview(showAnswerBtn)
        
        animate()
        addQuestion()
    }

    @objc func changeQuestion() {
        
        if counter < (questions.count - 1) {
            questionLable.text = questions[counter].question ?? "NA"
            counter += 1
            
        } else {
            counter = 0
            changeQuestion()
        }
        pickerTextField.text = nil

    }

    @objc func showAnswer() {
        counter -= 1
        answerLable.text = questions[counter].rightAnswer ?? "NA"
        counter += 1
    }
    
    @objc func result() {
        counter -= 1
        if pickerTextField.text == questions[counter].rightAnswer {
            SCLAlertView().showSuccess("Correct answer!", subTitle: "good luck on the next Question👍🏻")
        }
        else {
            SCLAlertView().showError("Wrong answer", subTitle: "Try again")

        }
        counter += 1
    }
    
    func animate() {
        if counter == 0 {
            UIButton.animate(withDuration: 1, delay: 0.0, options: .allowUserInteraction) {
                self.changeQuestionBtn.frame = CGRect(x: 100, y: 420, width: 200, height: 50)
            } completion: { done in
                if done {
                    self.shrink()
                }
            }

           
        }
    }
    
    func shrink(){
        UIButton.animate(withDuration: 1, delay: 0.0, options: .allowUserInteraction) {
            self.changeQuestionBtn.frame = CGRect(x: 100, y: 420, width: 180, height: 35)
        } completion: { done in
            if done {
                self.animate()
            }
        }

    }

    
}

extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        var numberOfRows = 0
        if counter == 0 {
            pickerTextField.resignFirstResponder()
            
            return 0
        }else {
            
        counter -= 1
        
        numberOfRows = questions[counter].answer?.components(separatedBy: ",").count ?? 0
        counter += 1
        }
        return numberOfRows
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        counter -= 1
        let list = questions[counter].answer?.components(separatedBy: ",") ?? [""]
        counter += 1
        
        return list[row]
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        counter -= 1
        let list = questions[counter].answer?.components(separatedBy: ",") ?? [""]
        pickerTextField.text = list[row]
        pickerTextField.resignFirstResponder()
        counter += 1
    
    }
    
}

