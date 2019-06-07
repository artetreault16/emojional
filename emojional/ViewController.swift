//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 6/7/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//    }
    
    let emojis = ["😞": "sad", "🥳": "party", "🤯": "overwhelmed", "🤬": "cursing"]
    let customMessages = ["sad": ["cheer up buttercup", "take a deep breath", "i believe in you"], "party": ["yay!", "glad to hear it!", "keep it up!"], "overwhelmed": ["take a breath", "do some yoga", "you've got this"], "cursing": ["oh no!", "remember to breathe", "take a break"]]
    
    @IBAction func showMessage(sender: UIButton){
        let selectedEmotion = sender.titleLabel?.text
        let number = Int.random(in: 0...2)
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[number]
        
        //on click - an alert shows up displaying a random message customized to each emoji
        var alertController = UIAlertController(title: emojis[selectedEmotion!], message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
        
    }
    
}

