//
//  ViewController.swift
//  Lunar Zodiac
//
//  Created by John Gallaugher on 1/21/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var animalImageView: UIImageView!
    
    var currentImageNumnber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func leftButtonPressed(_ sender: UIButton) {
        currentImageNumnber = currentImageNumnber - 1
        if currentImageNumnber < 0 {
            currentImageNumnber = 11
        }
        animalImageView.image = UIImage(named: "image\(currentImageNumnber)")
        
    }
    
    @IBAction func rightButtonPressed(_ sender: UIButton) {
        currentImageNumnber = currentImageNumnber + 1
        if currentImageNumnber > 11 {
            currentImageNumnber = 0
        }
        animalImageView.image = UIImage(named: "image\(currentImageNumnber)")
    }
    
}

