//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnRedC(_ sender: UIButton) {
        playSound(buttonTitle : sender.currentTitle!)
        
        reduceOpacity(button: sender)
    }
    
    func playSound(buttonTitle : String) {
        let url = Bundle.main.url(forResource: buttonTitle , withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
    
    func reduceOpacity(button: UIButton) {
        
        button.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2)
        {
                button.alpha = 1.0
        }
    }
}


