

import UIKit

class ViewController: UIViewController {
    
    var counter = -1

    let view1 = UIView()
    let view2 = UIView()

    let Tiltelabel = UILabel()
    let label1 = UILabel()
    let label2 = UILabel()
    
    let button1 = UIButton()
    let button2 = UIButton()

    var arrQuestions = ["grows when it eats, but dies when it drinks?", "Word looks the same upside down?", "What has to be broken before it can be used? ","What goes up and down without moving?"]
    var arrAnswers = ["A fire", "Swims","An egg","Stair"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Tiltelabel
        Tiltelabel.frame = CGRect(x: 140, y: 80, width: 300, height: 50)
        Tiltelabel.text = "Have fun!"
        Tiltelabel.font = UIFont(name: "GillSans-Italic", size: 30)
        view.addSubview(Tiltelabel)
     
        // Image
        let imageView = UIImageView(image: UIImage(named: "pic1"))
        imageView.frame = CGRect(x: 0, y: 500, width: 500, height: 380)
        view.addSubview(imageView)
        
        //first view
        view1.frame = CGRect(x: 19, y: 180, width: 352, height: 120)
        view1.backgroundColor = #colorLiteral(red: 0.8931336999, green: 0.9248648286, blue: 0.9666152596, alpha: 1)
        view1.layer.cornerRadius = 13
        view.addSubview(view1)
        
        //second view
        view2.frame = CGRect(x: 19, y: 350, width: 352, height: 120)
        view2.backgroundColor = #colorLiteral(red: 0.8931336999, green: 0.9248648286, blue: 0.9666152596, alpha: 1)
        view2.layer.cornerRadius = 13
        view.addSubview(view2)
        
        // first label
        label1.frame = CGRect(x: 23, y: 210, width: 350, height: 50)
        label1.font = UIFont(name: "GillSans-Italic", size: 20)
        label1.textAlignment = .center
        view.addSubview(label1)

        // second label
        label2.frame = CGRect(x: 180, y: 380, width: 300, height: 50)
        label2.font = UIFont(name: "GillSans-Italic", size: 22)

        view.addSubview(label2)
        
        // first button
        button1.frame = CGRect(x: 100, y: 265, width: 200, height: 50)
        button1.layer.cornerRadius = 10
        button1.backgroundColor = #colorLiteral(red: 0.529812685, green: 0.09419490754, blue: 0.04909098467, alpha: 1)
        button1.setTitle("Question", for: .normal)
        button1.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 38)
        view.addSubview(button1)
        button1.addTarget(self, action: #selector (buttonOne), for: .touchDown)
        
        // second button
        button2.frame = CGRect(x: 100, y: 435, width: 200, height: 50)
        button2.layer.cornerRadius = 10
        button2.backgroundColor = #colorLiteral(red: 0.529812685, green: 0.09419490754, blue: 0.04909098467, alpha: 1)
        button2.setTitle("Answers", for: .normal)
        button2.titleLabel?.font = UIFont(name: "GillSans-Italic", size: 38)
        view.addSubview(button2)
        button2.addTarget(self, action: #selector (buttonTwo), for: .touchDown)
    }
    

    @objc func buttonOne(){
        if counter+1 < arrQuestions.count{
        counter += 1
        label1.text = arrQuestions[counter]
        }
        label2.text = "???"
    }
    
    @objc func buttonTwo(){
        if counter >= 0{
        label2.text = arrAnswers[counter]
        }
    }
}
