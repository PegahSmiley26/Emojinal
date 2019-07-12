//
//  ViewController.swift
//  Emojinal
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var heartEyes: UIButton!
    
    @IBOutlet weak var blackHeart: UIButton!
    
//    @IBOutlet weak var zebra: UIButton!
//
//    @IBOutlet weak var rainbow: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessage(sender: UIButton) {
        
        // in as much detail as possible
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
        
        var customMessages = ["heartEyes": ["You are beautiful!", "Omg look at you go!", "Wowza!!"],"blackHeart": ["One love Ari", "Thank u, next", "Break up with your gf yuh yuh cause I'm bored"]]
        
        let selectedEmotion = sender.titleLabel?.text
        let emojis = ["🖤": "blackHeart" , "😍": "heartEyes"]
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[Int.random(in: 0...2)]
        
        let alertController = UIAlertController(title: "Honey,", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
//        let emojiNumber = Int.random(in: 0..<4)
    }

    
}















