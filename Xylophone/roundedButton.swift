//
//  roundedButton.swift
//  Xylophone
//
//  Created by Tom Dobson on 8/18/17.
//  Copyright © 2017 London App Brewery. All rights reserved.
//

import UIKit

extension UIButton {
    
    func roundButton(button: UIButton) {
        
        button.layer.cornerRadius = 30
        button.clipsToBounds = true
        
    }

    
}
