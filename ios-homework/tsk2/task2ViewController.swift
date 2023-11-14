//
//  task2ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 14.11.2023.
//

import UIKit

class task2ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageSize = CGSize(width: 130, height: 130)
        let labelHeight: CGFloat = 30
        let verticalSpacing: CGFloat = 20
        let horizontalSpacing: CGFloat = 20
        
        let imagesPerRow = 2
        
        for row in 0..<3 {
            for col in 0..<imagesPerRow {

                let originX = CGFloat(col) * (imageSize.width + horizontalSpacing) + 50
                let originY = CGFloat(row) * (imageSize.height + labelHeight + verticalSpacing)
                
                let imageView = UIImageView(frame: CGRect(x: originX, y: originY, width: imageSize.width, height: imageSize.height))
                imageView.image = UIImage(named: "Image\(row * imagesPerRow + col + 1)")
                imageView.contentMode = .scaleAspectFit
                view.addSubview(imageView)
                
                let label = UILabel(frame: CGRect(x: originX, y: originY + imageSize.height, width: imageSize.width, height: labelHeight))
                label.text = "Label \(row * imagesPerRow + col + 1)"
                label.textAlignment = .center
                view.addSubview(label)
            }
        }
    }
    
}

