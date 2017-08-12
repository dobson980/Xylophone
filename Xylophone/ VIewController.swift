//
//  ViewController.swift
//  Xylophone
//
//  Created by Thomas Dobson on 08/11/2017.
//  Copyright © Dobson Studios. All rights reserved.
//  Assets provided by London App Brewery
//

import UIKit

class ViewController: UIViewController{
    
    var xylophonePlayers = [XylophonePlayer]()
    let xylophone = Xylophone()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareKeySounds()
        
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        xylophonePlayers[sender.tag - 1].play()
        
    }
    
    func prepareKeySounds() {
        
        for note in xylophone.notes {
            
            xylophonePlayers.append(XylophonePlayer(filePath: note, ext: xylophone.fileExt)!)
            
        }
        
        for player in 0..<xylophonePlayers.count {
            
            xylophonePlayers[player].prepareSound()
            
        }
    }
}

