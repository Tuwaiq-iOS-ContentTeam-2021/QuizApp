//
//  ViewController.swift
//  Lola'sAnimalSoundsApp
//
//  Created by Lola M on 12/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    //Stack View
    let stackView = UIStackView()
    
    //Other Components
    let fixedLabel = UILabel()
    let imageView = UIImageView()
    let nextBtn = UIButton()
    let showAnswerBtn = UIButton()
    let animalSoundLabel = UILabel()
    
    //Array of Animals
    let animals: [Animal] = [
        Animal(image: UIImage(named: "cat")!, sound: "Miaow"),
        Animal(image: UIImage(named: "dog")!, sound: "Woof woof"),
        Animal(image: UIImage(named: "cow")!, sound: "Moo"),
        Animal(image: UIImage(named: "horse")!, sound: "Neigh"),
        Animal(image: UIImage(named: "chicken")!, sound: "Bok bok"),
        Animal(image: UIImage(named: "sheep")!, sound: "Baa'a"),
        Animal(image: UIImage(named: "bird")!, sound: "Ssew sew 🎶")
    ]
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = view.frame.width-40
        let height = view.frame.height-40
        var incrementYPoint = 0.0
        
        //The StackView
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.frame = CGRect(x: 20, y: 20, width: width, height: height)
        //        stackView.backgroundColor = .brown
        
        
        //The Fixed Label:
        stackView.addSubview(fixedLabel)
        fixedLabel.text = "what is the sound of the animal?"
        fixedLabel.numberOfLines = 2
        fixedLabel.font = UIFont.systemFont(ofSize: 28)
        fixedLabel.frame = CGRect(x: 0, y: 0, width: width, height: height/5)
        incrementYPoint += fixedLabel.frame.height
        fixedLabel.textAlignment = .center
        fixedLabel.textColor = .systemPink
        //        fixedLabel.backgroundColor = .blue
        
        
        //Animal Image:
        stackView.addSubview(imageView)
        imageView.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/3)
        incrementYPoint += imageView.frame.height
        imageView.contentMode = .scaleAspectFit
        //        imageView.backgroundColor = .blue
        
        
        //Next Animal Btn:
        stackView.addSubview(nextBtn)
        nextBtn.setImage(UIImage(systemName: "arrow.right"), for: .normal)
        nextBtn.addTarget(self, action: #selector(NextAnnimal), for: .touchDown)
        nextBtn.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/9)
        incrementYPoint += nextBtn.frame.height
        //        nextBtn.backgroundColor = .white
        
        
        //Show Answer Button:
        stackView.addSubview(showAnswerBtn)
        showAnswerBtn.setTitle("Show The Answer", for: .normal)
        showAnswerBtn.addTarget(self, action: #selector(ShowAnswer), for: .touchDown)
        showAnswerBtn.titleLabel?.numberOfLines = 2
        showAnswerBtn.titleLabel?.textColor = .white
        showAnswerBtn.titleLabel?.font = UIFont.systemFont(ofSize: 22)
        showAnswerBtn.titleLabel?.textAlignment = .center
        showAnswerBtn.frame = CGRect(x: width/2-height/5.5/2, y: incrementYPoint ,width: height/5.5, height: height/5.5)
        showAnswerBtn.layer.cornerRadius = 71.5
        incrementYPoint += showAnswerBtn.frame.height
        showAnswerBtn.backgroundColor = .systemPink
        
        

        //Animal Sound:
        stackView.addSubview(animalSoundLabel)
        animalSoundLabel.font = UIFont.systemFont(ofSize: 28)
        animalSoundLabel.frame = CGRect(x: 0, y: incrementYPoint, width: width, height: height/5)
        animalSoundLabel.textAlignment = .center
        animalSoundLabel.textColor = .black
        //        animalSoundLabel.backgroundColor = .yellow
        
    }
    
    
    //Button Functions
    @objc func NextAnnimal() {
        if index <= animals.count - 1 {
            imageView.image = animals[index].image
            index += 1
            animalSoundLabel.text = ""
            print(index)
        }
    }
    
    @objc func ShowAnswer() {
        for (index, animal) in animals.enumerated() {
            if imageView.image == animal.image {
                animalSoundLabel.text = animal.sound
            }
        }
        print("answer")
    }
}

