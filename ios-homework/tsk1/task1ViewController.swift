//
//  task1ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 14.11.2023.
//

import UIKit

class task1ViewController: UIViewController {
    
    var images = ["Image1","Image2","Image3","Image4","Image5","Image6","Image7","Image8","Image9"]
    var currentImageIndex = 0
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: images[currentImageIndex])
    }
    
    @IBAction func tapNext(_ sender: Any) {
        if currentImageIndex < images.count - 1 {
            currentImageIndex += 1
            imageView.image = UIImage(named: images[currentImageIndex])
        }
    }
    @IBAction func tapBack(_ sender: Any) {
        if currentImageIndex > 0 {
            currentImageIndex -= 1
            imageView.image = UIImage(named: images[currentImageIndex])
        }
    }
}
