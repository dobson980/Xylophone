//
//  panView.swift
//  Xylophone
//
//  Created by Thomas Dobson on 08/11/2017.
//  Copyright © Dobson Studios. All rights reserved.
//  Assets provided by London App Brewery
//

import UIKit

extension ViewController {
    
    @objc func panOverKey(sender : UIPanGestureRecognizer) {
        
        let touchPoint = sender.location(in: self.view)
        
        for key in xylophoneKeys {
            
            if key.frame.contains(touchPoint) {
                
                if key.tag != Int(lastActiveKey) {
                    print("panPlayed sound for \(key.tag)")
                    xylophonePlayers[key.tag - 1].play()
                    lastActiveKey = "\(key.tag)"
                }
                
            }
            
        }
        
    }
    
}
