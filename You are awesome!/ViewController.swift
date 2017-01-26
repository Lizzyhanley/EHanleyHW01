//
//  ViewController.swift
//  You are awesome!
//
//  Created by CSOM on 1/25/17.
//  Copyright © 2017 CSOM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var lbl: UILabel!
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPressed(_ sender: Any) {
        
        let messages = ["You Are Da Bomb!",
                        "You Are Great!",
                        "You Are Amazing!",
                        "You're doing great",
                        "When the genius bar needs help they call you!",
                        "You Brighten my day!",
                        "I can't wait to use your app!" ]
        
            lbl.text = messages[index]

        
            if index == messages.count - 1 {
            index = 0
            } else {
            index = index + 1
        }
            }
}

