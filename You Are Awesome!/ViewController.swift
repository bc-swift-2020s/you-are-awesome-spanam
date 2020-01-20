//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Matthew Spana on 1/20/20.
//  Copyright © 2020 Matthew Spana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let messages = ["You Are Awesome!",
                    "You Are Great!",
                    "You Are Fantastic!",
                    "You Are The Best!",
                    "You're Phenomenal!",
                    "You're Exceptional!",
                    "You're Amazing!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        // modify image randomly chosen
        let imageName = "Dog\(Int.random(in: 0...6))"
        imageView.image = UIImage(named: imageName)
        
        // modify message
        messageLabel.text = messages[Int.random(in: 0...messages.count - 1)]
        
        
        //        let awesomeMessage = "You Are Awesome!"
        //        let greatMessage = "You Are Great!"
        //        let fantasticMessage = "You Are Fantastic!"
        //
        //        if messageLabel.text == fantasticMessage {
        //            messageLabel.text = greatMessage
        //            imageView.image = UIImage(named: "Dog2")
        //        } else if messageLabel.text == greatMessage {
        //            messageLabel.text = awesomeMessage
        //            imageView.image = UIImage(named: "Dog0")
        //        } else {
        //            messageLabel.text = fantasticMessage
        //            imageView.image = UIImage(named: "Dog1")
        //        }
    }
}

