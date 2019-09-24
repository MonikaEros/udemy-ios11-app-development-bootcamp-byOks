//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
//import AudioToolbox

class ViewController: UIViewController{
    
    
    var audioPlayer: AVAudioPlayer!
    var player2: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        let soundName = "note\(sender.tag)"
        playSound(name: soundName)
        
    }
    
    func playSound (name: String) {
        
        /*
         if let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav") {
         var mySound: SystemSoundID = 0
         AudioServicesCreateSystemSoundID(url as CFURL, &mySound)
         // Play
         AudioServicesPlaySystemSound(mySound)
         }
         */
        
        let soundURL = Bundle.main.url(forResource: name, withExtension: "wav")
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: soundURL!)
            /*
             guard let player2 = player2 else {return}
             player2.prepareToPlay()
             player2.play() */
        } catch let error {
            print(error.localizedDescription)
        }
        
        audioPlayer?.play()
    }
  

}

