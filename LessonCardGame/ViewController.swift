//
//  ViewController.swift
//  LessonCardGame
//
//  Created by 谢文韬 on 12/26/19.
//  Copyright © 2019 wentao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func DealTapped(_ sender: Any) {
        
        // Randomize some numbers
        let leftrandomNumber = Int.random(in: 2...14)
        
        let rightrandomNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftrandomNumber)")
        rightImageView.image = UIImage(named: "card\(rightrandomNumber)")
        
        // Compare random numbers
        if(leftrandomNumber > rightrandomNumber){
            // Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }
        else if(leftrandomNumber<rightrandomNumber){
            // Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
    }
}

