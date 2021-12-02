//
//  ViewController.swift
//  QuizProject
//
//  Created by Abdullah Alnutayfi on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    var index = 0
    var moreIndex = -1
    let qusetions = ["Who is my favorite writer?","Where is the Eiffel Tower located?","Where is Van Gogh's yellow house located?","Who is the writer whose\n writing begins with a dream and ends with a nightmare?"]
    let answers = ["Dostoevsky","Paris","Arles city","Franz Kafka",]
    let more = [
        """
        Fyodor Mikhailovich Dostoevsky sometimes transliterated as Fedor Dostoyevsky, was a Russian novelist, short story writer, essayist, and journalist.
        Dostoevsky's literary works explore human psychology in the troubled political, social, and spiritual atmospheres of 19th-century Russia, and engage with a variety of philosophical and religious themes. His most acclaimed novels include Crime and Punishment (1866), The Idiot (1869), Demons (1872), and The Brothers Karamazov (1880).
        Many literary critics rate him as one of the greatest novelists in all of world literature, as multiple of his works are considered highly influential masterpieces.
        """
        ,
        """
        Paris (French pronunciation: ​[paʁi] (About this soundlisten)) is the capital and most populous city of France, with an estimated population of 2,175,601 residents as of 2018, in an area of more than 105 square kilometres (41 square miles).[4] Since the 17th century, Paris has been one of Europe's major centres of finance, diplomacy, commerce, fashion, gastronomy, science, and arts. The City of Paris is the centre and seat of government of the region and province of Île-de-France, or Paris Region, which has an estimated population of 12,174,880, or about 18 percent of the population of France as of 2017.[5] The Paris Region had a GDP of €709 billion ($808 billion) in 2017.[6] According to the Economist Intelligence Unit Worldwide Cost of Living Survey in 2018, Paris was the second most expensive city in the world, after Singapore and ahead of Zürich, Hong Kong, Oslo, and Geneva.[7] Another source ranked Paris as most expensive, on par with Singapore and Hong Kong, in 2018.[8][9]
        """
        ,
        """
        Arles (/ɑːrl(z)/, US also /ˈɑːrəl/,[3][4][5][6] French: [aʁl]; Provençal: Arle [ˈaʀle] in both classical and Mistralian norms; Classical Latin: Arelate) is a city and commune in the south of France, a subprefecture in the Bouches-du-Rhône department of the Provence-Alpes-Côte d'Azur region, in the former province of Provence.
        
        A large part of the Camargue, the largest wetlands in France, is located on the territory of the commune, making it the largest commune in Metropolitan France in terms of geographic territory. (Maripasoula, French Guiana, is much larger than Arles). The city has a long history, and was of considerable importance in the Roman province of Gallia Narbonensis. The Roman and Romanesque Monuments of Arles were listed as UNESCO World Heritage Sites in 1981 for their testimony to the history of the region.[7]
        """
        ,
        """
        Franz Kafka[a] (3 July 1883 – 3 June 1924) was a German-speaking Bohemian novelist and short-story writer, widely regarded as one of the major figures of 20th-century literature. His work fuses elements of realism and the fantastic.[4] It typically features isolated protagonists facing bizarre or surrealistic predicaments and incomprehensible socio-bureaucratic powers. It has been interpreted as exploring themes of alienation, existential anxiety, guilt, and absurdity.[5] His best known works include the short story "The Metamorphosis" and novels The Trial and The Castle. The term Kafkaesque has entered English to describe situations like those found in his writing.[6]
        """
    ]
    var isQuesioned = false
    
    lazy var questionLable : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Try to guess the answer"
        $0.textAlignment = .center
        return $0
    }(UILabel())
    
    lazy var question : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textAlignment = .center
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var ansawrLable : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textAlignment = .center
        return $0
    }(UILabel())
    
    lazy var ansawr : UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textAlignment = .center
        $0.numberOfLines = 0
        
        return $0
    }(UILabel())
    
    lazy var fetchQuestion : UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addTarget(self, action: #selector (getQuestion) ,for: .touchDown)
        $0.setTitle("Get a question", for: .normal)
        $0.titleLabel?.font =  UIFont(name: "Seravek Bold", size: 20)
        $0.setBackgroundImage(UIImage(named: "buttonImage"), for: .normal)
        $0.tintColor = .black
        $0.layer.cornerRadius = 10
        return $0
    }(UIButton(type: .system))
    
    lazy var fetchAnswer : UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addTarget(self, action: #selector (getAnswer) ,for: .touchDown)
        $0.setTitle("Get the answer", for: .normal)
        $0.titleLabel?.font =  UIFont(name: "Seravek Bold", size: 20)
        $0.setBackgroundImage(UIImage(named: "buttonImage"), for: .normal)
        $0.tintColor = .black
        $0.layer.cornerRadius = 10
        return $0
    }(UIButton(type: .system))
    
    lazy var image : UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setBackgroundImage(UIImage(systemName: "questionmark"), for: .normal)
        $0.isEnabled = false
        $0.addTarget(self, action: #selector (moreInfo) ,for: .touchDown)
        return $0
    }(UIButton(type: .system))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uISettings()
    }
    func uISettings(){
        view.backgroundColor = .lightGray
        [questionLable,question,ansawrLable,ansawr,fetchAnswer,fetchQuestion,image].forEach{view.addSubview($0)}
        
        NSLayoutConstraint.activate([
            questionLable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant:100),
            questionLable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            questionLable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            
            fetchQuestion.topAnchor.constraint(equalTo: questionLable.bottomAnchor,constant: 20),
            fetchQuestion.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            fetchQuestion.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            fetchQuestion.heightAnchor.constraint(equalToConstant: 80),
            
            question.topAnchor.constraint(equalTo: fetchQuestion.bottomAnchor, constant:20),
            question.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            question.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            fetchAnswer.topAnchor.constraint(equalTo: question.bottomAnchor,constant: 20),
            fetchAnswer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            fetchAnswer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            fetchAnswer.heightAnchor.constraint(equalToConstant: 80),
            
            ansawr.topAnchor.constraint(equalTo: fetchAnswer.bottomAnchor, constant:20),
            ansawr.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            ansawr.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            image.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            image.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            image.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor,constant: -10),
            image.heightAnchor.constraint(equalToConstant: 300),
            image.widthAnchor.constraint(equalToConstant: 150),
        ])
    }
    @objc func getQuestion(){
        image.isEnabled = false
        image.setBackgroundImage(UIImage(systemName: "questionmark"), for: .normal)
        question.text = qusetions[index]
        ansawr.text = "???"
        print(index)
        isQuesioned = true
    }
    
    @objc func getAnswer(){
        image.isEnabled = true
        if isQuesioned{
            if index < qusetions.count{
                ansawr.text = answers[index]
                image.setBackgroundImage(UIImage(named: answers[index]), for: .normal)
                print(index)
                index+=1
            }
            if moreIndex < more.count{
                moreIndex+=1
            }
            if moreIndex >= more.count{
                moreIndex = 0
            }
            if index >= qusetions.count{
                index = 0
            }
        }
        isQuesioned = false
    }
    @objc func moreInfo(){
        let alert = UIAlertController(title: "More info about \(answers[moreIndex])", message:
                                        more[moreIndex]
                                      , preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "well, interesting", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}

