//
//  GradientButton.swift
//  Quiz App
//
//  Created by mac on 08/12/2021.
//

import UIKit

class GradientButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.cornerRadius = 15
        gradient.colors = [
            UIColor.systemPurple.cgColor,
            UIColor.systemIndigo.cgColor
        ]
        layer.addSublayer(gradient)
    }
    required init?(coder: NSCoder) {
        fatalError()
    }

}
