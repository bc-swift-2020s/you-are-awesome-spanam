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
    let totalSounds = 4
    var soundNumber = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        messageLabel.text = ""
    }
    
    func playSound(_ soundName: String) {
        
        if let sound = NSDataAsset(name: soundName) {
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
        } else {
            print("Error: could not read sound from file \(soundName)")
        }
        
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperBounds: Int) -> Int {
        
        var newNumber: Int
        repeat {
            newNumber = Int.random(in: 0...upperBounds)
        } while newNumber == originalNumber
        
        return newNumber
        
    }
    
    @IBAction func messageButtonPressed(_ sender: UIButton) {
        
        // modify image randomly chosen
        imageNumber = nonRepeatingRandom(originalNumber: imageNumber, upperBounds: totalImages - 1)
        imageView.image = UIImage(named: "Dog\(imageNumber)")
        
        // modify message
        messageNumber = nonRepeatingRandom(originalNumber: messageNumber, upperBounds: messages.count - 1)
        messageLabel.text = messages[messageNumber]
        
        // modify sound
        soundNumber = nonRepeatingRandom(originalNumber: soundNumber, upperBounds: totalSounds - 1)
        playSound("sound\(soundNumber)")
        
    }
}

