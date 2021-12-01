//
//  ViewController.swift
//  LifeCycle
//
//  Created by AlDanah Aldohayan on 01/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let myView = UIView()
    let my2ndView = UIView(frame: CGRect(x: 50, y: 100, width: 50, height: 50))

    override func viewDidLoad() {
        super.viewDidLoad()
//        print("viewDidLoad")
        let yM = view.frame.midY // .height / 2
        let xM = view.frame.midX // .width / 2
        print(xM)
        print(yM)
        
        myView.frame = CGRect(x: xM, y: yM, width: 400, height: 300)
        
        myView.backgroundColor = .systemPink
        my2ndView.backgroundColor = .white
        
        view.addSubview(myView)
        myView.addSubview(my2ndView)
    }
    
    
    
//    override func viewWillAppear(_ animated: Bool) {
//        print("viewWillAppear")
//    }
//    override func viewDidAppear(_ animated: Bool) {
//        print("viewDidAppear")
//    }
//    override func viewWillDisappear(_ animated: Bool) {
//        print("viewWillDisappear")
//    }
//    override func viewDidDisappear(_ animated: Bool) {
//        print("viewDidDisappear")
//    }
    


}

