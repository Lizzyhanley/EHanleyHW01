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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPressed(_ sender: Any) {
        
        let message1 = "You Are Da Bomb!"
        let message2 = "You Are Great!"
        let message3 = "You Are Amazing!"
        
        if lbl.text == message1 {
            lbl.text = message2
        } else if lbl.text == message2 { lbl.text = message3 }
        else {
            lbl.text = message1
        }
    }
}

