//
//  Animal.swift
//  Lola'sAnimalSoundsApp
//
//  Created by Lola M on 12/1/21.
//

import Foundation
import UIKit

class Animal {
    var image: UIImage?
    var sound: String?
    
    init(image: UIImage, sound: String) {
        self.image = image
        self.sound = sound
    }
}
