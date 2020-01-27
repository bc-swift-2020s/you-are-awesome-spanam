//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Matthew Spana on 1/20/20.
//  Copyright © 2020 Matthew Spana. All rights reserved.
//

import UIKit
import AVFoundation

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
    var messageNumber: Int = -1
    var imageNumber: Int = -1
    let totalImages = 6
    var audioPlayer = AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        // modify image randomly chosen
        var newImageNumber: Int
        repeat {
            newImageNumber = Int.random(in: 0...totalImages)
        } while imageNumber == newImageNumber
        imageNumber = newImageNumber
        imageView.image = UIImage(named: "Dog\(imageNumber)")
        
        // modify message
        var newMessageNumber: Int
        repeat {
            newMessageNumber = Int.random(in: 0...messages.count - 1)
        } while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        messageLabel.text = messages[messageNumber]
        
        if let sound = NSDataAsset(name: "sound0") {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
        } else {
            print("Error: could not read sound from file sound0")
        }
    }
}

