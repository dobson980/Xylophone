//
//  ViewController.swift
//  Xylophone
//
//  Created by Thomas Dobson on 08/11/2017.
//  Copyright © Dobson Studios. All rights reserved.
//  Assets provided by London App Brewery
//

import AVFoundation

class XylophonePlayer {
    
    var path: String
    var noteURL: URL
    var xylophonePlayer: AVAudioPlayer!
    
    init?(filePath: String, ext: String) {
        
        self.path = Bundle.main.path(forResource: filePath, ofType: ext)!
        self.noteURL = URL(fileURLWithPath: path)
        
    }
    
    func prepareSound() {
        do {
            
            try xylophonePlayer = AVAudioPlayer(contentsOf: noteURL)
                xylophonePlayer.prepareToPlay()
            
        }
        catch let error as NSError {
            
            print("\(error.debugDescription)")
            
            }
        }
    
    func play() {
        
        if xylophonePlayer.isPlaying {

            xylophonePlayer.currentTime = 0
            xylophonePlayer.play()

        }
        xylophonePlayer.play()

    }
}

