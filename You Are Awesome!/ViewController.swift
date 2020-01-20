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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }
    
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        let awesomeMessage = "You Are Awesome!"
        let greatMessage = "You Are Great!"
        let fantasticMessage = "You Are Fantastic!"
        
        if messageLabel.text == fantasticMessage {
            messageLabel.text = greatMessage
            imageView.image = UIImage(named: "Dog2")
        } else if messageLabel.text == greatMessage {
            messageLabel.text = awesomeMessage
            imageView.image = UIImage(named: "Dog0")
        } else {
            messageLabel.text = fantasticMessage
            imageView.image = UIImage(named: "Dog1")
        }
    }
}

