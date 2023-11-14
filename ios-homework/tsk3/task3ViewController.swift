//
//  task3ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 14.11.2023.
//

import UIKit

class task3ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showContentView(forSegment: segmentedControl.selectedSegmentIndex)
    }
    
    
   
    @IBAction func segmentedControlValueChanged(_ sender: Any) {
        showContentView(forSegment: (sender as AnyObject).selectedSegmentIndex)
    }
    func showContentView(forSegment index: Int) {
        // Удаляем все предыдущие подвиды
        for subview in contentView.subviews {
            subview.removeFromSuperview()
        }
        
        switch index {
        case 0:
            let greenView = UIView()
            contentView.backgroundColor = .green
            
            let textField1 = UITextField()
            textField1.placeholder = "Текстовое поле 1"
            textField1.borderStyle = .roundedRect
            
            let textField2 = UITextField()
            textField2.placeholder = "Текстовое поле 2"
            textField2.borderStyle = .roundedRect
            
            contentView.addSubview(textField1)
            contentView.addSubview(textField2)
            
            textField1.translatesAutoresizingMaskIntoConstraints = false
            textField2.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(greenView)
            NSLayoutConstraint.activate([
                
                textField1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
                textField1.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                
                textField2.topAnchor.constraint(equalTo: textField1.bottomAnchor, constant: 20),
               textField2.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),

            ])
            
        case 1:
            let blueView = UIView()
            contentView.backgroundColor = .blue
            
            let button1 = UIButton(type: .system)
            button1.setTitle("Кнопка 1", for: .normal)
            button1.backgroundColor = .purple
            let button2 = UIButton(type: .system)
            button2.setTitle("Кнопка 2", for: .normal)
            button2.backgroundColor = .purple
            
            contentView.addSubview(button1)
            contentView.addSubview(button2)
            
            button1.translatesAutoresizingMaskIntoConstraints = false
            button2.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(blueView)

            NSLayoutConstraint.activate([
                button1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
                button1.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                
                button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 20),
                button2.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            ])
            
        case 2:
            let purpleView = UIView()
            contentView.backgroundColor = .purple
            
            let imageView1 = UIImageView(image: UIImage(named: "Image1"))
            let imageView2 = UIImageView(image: UIImage(named: "Image2"))
            
            contentView.addSubview(imageView1)
            contentView.addSubview(imageView2)
            
        
            imageView1.translatesAutoresizingMaskIntoConstraints = false
            imageView2.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(purpleView)
            
               let newImageSize = CGSize(width: 180, height: 180)
              
               if let resizedImage1 = imageView1.image?.scaled(toSize: newImageSize),
                  let resizedImage2 = imageView2.image?.scaled(toSize: newImageSize) {
                   imageView1.image = resizedImage1
                   imageView2.image = resizedImage2
               }
            
            NSLayoutConstraint.activate([
                imageView1.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
                imageView1.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
                
                imageView2.topAnchor.constraint(equalTo: imageView1.bottomAnchor, constant: 20),
                imageView2.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
  
            ])
            
        default:
            break
        }
    }
}

extension UIImage {
    func scaled(toSize newSize: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
        defer { UIGraphicsEndImageContext() }
        draw(in: CGRect(origin: .zero, size: newSize))
        return UIGraphicsGetImageFromCurrentImageContext()
    }
}
