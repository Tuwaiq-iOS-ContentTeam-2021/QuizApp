//
//  ViewController.swift
//  QuizApp
//
//  Created by Rayan Taj on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var questionArray : [Question] = [
        Question(questionStatment: "Moscow is the capital of ...", answer: "Russia"),
        Question(questionStatment: "34*2 = ", answer: "68"),
        Question(questionStatment: "Swift is a .... language", answer: "Programming"),
        Question(questionStatment: "The biggest sport event is", answer: "Football world cup"),
        Question(questionStatment: "1 million has .... zeros ", answer: "six zeros"),
        Question(questionStatment: "apple is a fruit", answer: "true"),
        Question(questionStatment: "a year has .... months", answer: "12"),
    ]
    
    var questionsCounter = 0
    
    
    lazy var stackView: UIStackView = {
        var myStackView = UIStackView(frame: CGRect(x: 20, y: 150, width: view.frame.width - 40, height: view.frame.height / 1.5))
        myStackView.axis  = NSLayoutConstraint.Axis.vertical
        myStackView.alignment = UIStackView.Alignment.fill
        myStackView.spacing   = 100.0
        
        return myStackView
    }()
    
    
    lazy var horizontalStackView: UIStackView = {
        var myStackView = UIStackView()
        myStackView.axis  = NSLayoutConstraint.Axis.horizontal
        myStackView.distribution  = UIStackView.Distribution.fillEqually
        myStackView.alignment = UIStackView.Alignment.center
        myStackView.spacing   = 32.0
        return myStackView
    }()
    
    
    var questionNumberLabel = UILabel()
    var answerLabel = UILabel()
    var questionLabel = UILabel()
    
    var nextQuestionButton = UIButton()
    var prevQuestionButton = UIButton()
    var showAnswerButton = UIButton()
    var startQuizButton = UIButton()
    
    
    
    
    // this function will allow me to generate diffrent buttons without duplicating the same code
    func generateCustomButton(title : String ) -> UIButton{
        let myCustomButton = UIButton()
        myCustomButton.setTitle(title, for: .normal)
        myCustomButton.backgroundColor = UIColor(red: 0.40, green: 0.22, blue: 0.94, alpha: 1.00)
        myCustomButton.titleLabel?.font = .systemFont(ofSize: 25)
        myCustomButton.layer.cornerRadius = 20
        return myCustomButton
    }
    
    // this function will allow me to generate diffrent labels without duplicating the same code

    func generateCustomLabel(fontSize : UIFont , isStart : Bool , text : String , color : UIColor) -> UILabel {
        let myLabel = UILabel()
        myLabel.textColor = color
        myLabel.font = isStart ? .boldSystemFont(ofSize: 25) : fontSize
        myLabel.text = text
        myLabel.textAlignment = .center
        
        return myLabel
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create custom Labels
        questionNumberLabel = generateCustomLabel(fontSize: .systemFont(ofSize: 25), isStart: true, text: "Start the Quiz" , color:  .black)
        questionLabel  = generateCustomLabel(fontSize: .systemFont(ofSize: 25), isStart: false, text: "" , color:  UIColor(red: 0.40, green: 0.22, blue: 0.94, alpha: 1.00))
        answerLabel = generateCustomLabel(fontSize: .systemFont(ofSize: 25), isStart: false, text: "" , color:  UIColor(red: 0.40, green: 0.22, blue: 0.94, alpha: 0.50))
        
        
        // create a button and add the next functionality
        nextQuestionButton = generateCustomButton(title: "Next")
        nextQuestionButton.addTarget(self, action: #selector(nextQuestionButtonTap(_:)), for: .touchDown)
        nextQuestionButton.isHidden = true
        
        prevQuestionButton = generateCustomButton(title: "previous")
        prevQuestionButton.addTarget(self, action: #selector(prevQuestionButtonTap(_:)), for: .touchDown)
        prevQuestionButton.isHidden = true
        
        showAnswerButton = generateCustomButton(title: "Show Answer")
        showAnswerButton.addTarget(self, action: #selector(showAnswerButtonTap(_:)), for: .touchDown)
        showAnswerButton.isHidden = true
        
        
        startQuizButton = generateCustomButton(title: "Start")
        startQuizButton.addTarget(self, action: #selector(startQuizButtonTap(_:)), for: .touchDown)
        
        
        // Add the stack view in the Main view
        self.view.addSubview(stackView)
        
        // adding diffrent UIViews in the stack
        stackView.addArrangedSubview(questionNumberLabel)
       
        
        stackView.addArrangedSubview(questionLabel)
        stackView.addArrangedSubview(answerLabel)
        
        // adding two buttons (prev , next ) to the horizontal stack
        horizontalStackView.addArrangedSubview(prevQuestionButton)
        horizontalStackView.addArrangedSubview(nextQuestionButton)
        
        stackView.addArrangedSubview(startQuizButton)
        stackView.addArrangedSubview(horizontalStackView)
        
        stackView.addArrangedSubview(showAnswerButton)
        
        
        
    }
    
    
    @objc func nextQuestionButtonTap(_ sender: UIButton) {
        
        questionsCounter+=1
        
        if questionsCounter == questionArray.count {
            questionsCounter = 0
        }
        
        questionNumberLabel.text = "Question \(questionsCounter+1)"
        questionLabel.text = questionArray[questionsCounter].questionStatment
        
        answerLabel.text  = ""
    }
    
    @objc func prevQuestionButtonTap(_ sender: UIButton) {
        questionsCounter-=1
        
        if questionsCounter <= 0  {
            questionsCounter = 0
        }
        
        questionNumberLabel.text = "Question \(questionsCounter+1)"
        questionLabel.text = questionArray[questionsCounter].questionStatment
        answerLabel.text  = ""
        
    }
    
    @objc func showAnswerButtonTap(_ sender: UIButton) {
        answerLabel.text = String(questionArray[questionsCounter].answer)
    }
    
    @objc func startQuizButtonTap(_ sender: UIButton) {
        
        questionNumberLabel.text = "Question \(questionsCounter+1)"
        questionLabel.text = questionArray[questionsCounter].questionStatment
        nextQuestionButton.isHidden = false
        showAnswerButton.isHidden = false
        prevQuestionButton.isHidden = false
        startQuizButton.isHidden = true
       
        
    }
    
    
    
    
    
}

