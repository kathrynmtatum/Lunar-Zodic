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
    @IBOutlet weak var animalLabel: UILabel!
    
    var currentImageNumnber = 0
    var currentYear = 2020
    var animalNames = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSER", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        print("You just pressed the button with tag \(sender.tag).")
        
        currentImageNumnber = currentImageNumnber + sender.tag
        if currentImageNumnber < 0 {
            currentImageNumnber = 11
        } else if currentImageNumnber > 11 {
            currentImageNumnber = 0
        }
        print(currentImageNumnber)
        var image_name = "image\(currentImageNumnber)"
        print(image_name)
        animalImageView.image = UIImage(named: image_name)
        animalLabel.text = animalNames[currentImageNumnber]
        
        currentYear = currentYear + sender.tag
        yearLabel.text = String(currentYear)

}
}
