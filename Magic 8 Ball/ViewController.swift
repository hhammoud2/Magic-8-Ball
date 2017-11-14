//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Hammoud Hammoud on 11/14/17.
//  Copyright © 2017 Hammoud Hammoud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]

    var answer : Int = 0

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBall()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateBall() {
        answer = Int(arc4random_uniform(5))
        imageView.image = UIImage(named: ballArray[answer])
        
    }
    @IBAction func askButton(_ sender: UIButton) {
        updateBall()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
}

