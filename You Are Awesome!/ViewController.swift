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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad has run")
        messageLabel.text = "You Are Great!"
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("The message button was pressed")
        messageLabel.text = "You Are Awesome!"
    }
}

