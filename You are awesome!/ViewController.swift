//
//  ViewController.swift
//  You are awesome!
//
//  Created by CSOM on 1/25/17.
//  Copyright © 2017 CSOM. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var awesomeImg: UIImageView!
    @IBOutlet weak var soundSwitch: UISwitch!
    
    var awesomePlayer = AVAudioPlayer()
    
    var lastIndex = -1
    var numOfImgs = 8
    var lastImg = -1
    var numOfSounds = 12
    var lastSound = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func playSound(soundName: String) {
        
        if let sound = NSDataAsset(name: soundName) {
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("ERROR: Data frin \(soundName) could not be played as an audio file")
            }
        } else {
            print("ERROR: Could not load data from file \(soundName)")
        }
        
        
    }
    
    func nonRepeatedRandom(last: inout Int, range: Int) -> Int {
        var random: Int = Int(arc4random_uniform(UInt32(range)))
        
        while random == last {
            random = Int(arc4random_uniform(UInt32(range)))
        }
        last = random
        
        return random
    }
    
    // MARK: Actions
    @IBAction func btnPressed(_ sender: Any) {
        
        let messages = ["You Are Da Bomb!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You're Doing Great!",
                        "Keep it up!",
                        "You Brighten my day!",
                        "I Think You're Remarkable!!",
                        "You Are Fantastic!" ]
        
        var random: Int
        
        random = nonRepeatedRandom(last: &lastIndex, range: messages.count)
        lbl.text = messages[random]
        
        awesomeImg.isHidden = false
        random = nonRepeatedRandom(last: &lastImg, range: numOfImgs)
        awesomeImg.image = UIImage(named: "img" + String(random))
        
        
        if soundSwitch.isOn == true {
            random = nonRepeatedRandom(last: &lastSound, range: numOfSounds)
            playSound(soundName: "sound" + String(random))
        }
    }
    
    
    @IBAction func soundSwitchPressed(_ sender: UISwitch) {
        if soundSwitch.isOn == false {
            if lastSound != -1 {
                awesomePlayer.stop()
            }
            
        }
        
    }
    
}



        /*
        lbl.text = messages[index]

        
            if index == messages.count - 1 {
            index = 0
            } else {
            index = index + 1
        }
            }
    */
        
        /*
         let msg1 = "You are fantastic"
         let msg2 = "You are great"
         let msg3 = "You are amazing"
 
         if lbl.text == msg1 {
         lbl.text = msg2
         } else if lbl.text == msg2 {
         lbl.text = msg3
         } else {
         lbl.text = msg1
         }
         }
 
 */
 
        
        

