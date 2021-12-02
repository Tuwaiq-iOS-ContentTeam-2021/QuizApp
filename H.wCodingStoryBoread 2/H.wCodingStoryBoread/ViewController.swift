//
//  ViewController.swift
//  H.wCodingStoryBoread
//
//  Created by Abrahim MOHAMMED on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {

    
    
    var imageViewObject = UIImageView()

    
    let button = UIButton()
    
    let button2 = UIButton()
    
    let lable = UILabel()
    
    let lable2 = UILabel()
    
    var arr : [String] = ["what is your name ", "How old are you ", "1*1+0*1+0*1+1+2+0*1"]
    var arr2 : [String] = ["my name is Ibrahim ", "12*2 ", "4"]
   
   var index = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       

        self.view.backgroundColor = #colorLiteral(red: 0.2491992414, green: 0.5297717452, blue: 0.3850607872, alpha: 1)
        imageViewObject = UIImageView(frame:CGRect(x: 0, y: 50, width: 420, height: 250))
       // imageViewObject.backgroundColor = .red
        imageViewObject.image = UIImage(named:"ee")
//
        self.view.addSubview(imageViewObject)

        lable.text = arr[index]
        lable.textColor = .white
    lable.frame = CGRect(x:0, y: 280, width: 450, height: 40)
    lable.backgroundColor = #colorLiteral(red: 0.506103158, green: 0.4999220967, blue: 0.3292017579, alpha: 1)
        
        view.addSubview(lable)
        
        button.frame = CGRect(x:133, y: 330, width: 150, height: 40)
        button.backgroundColor = #colorLiteral(red: 0.5042873621, green: 0.2249069214, blue: 0.1009826288, alpha: 1)
        button.setTitle("Next question", for: .normal)
        button.addTarget(self, action: #selector(foo), for: .touchDown)
        view.addSubview(button)

        button2.frame = CGRect(x:133, y: 410, width: 150, height: 40)
        button2.backgroundColor = #colorLiteral(red: 0.5042873621, green: 0.2249069214, blue: 0.1009826288, alpha: 1)
        button2.setTitle("Anser question", for: .normal)
        button2.addTarget(self, action: #selector(fo), for: .touchDown)

        view.addSubview(button2)
        
        
        lable2.frame = CGRect(x:0, y: 460, width: 450, height: 40)
        lable2.backgroundColor = #colorLiteral(red: 0.506103158, green: 0.4999220967, blue: 0.3292017579, alpha: 1)
        lable2.textColor = .white
            view.addSubview(lable2)
        
    }
   
   
        
    @objc func foo(){
        index+=1
        if index<arr.count {
            
           

            lable.text = arr[index]

            
            
        }else{
            
            index = 0
            
            lable.text = arr[index]

        }
        
        
        

        
     
    
}
    
    @objc func fo(){
          
        lable2.text = arr2[index]
        


}

}
