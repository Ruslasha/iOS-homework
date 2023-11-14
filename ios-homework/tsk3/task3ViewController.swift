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
//    var contentView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        contentView = UIView()
//        contentView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(contentView)
//        
//        NSLayoutConstraint.activate([
//                    
//                    contentView.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor, constant: 20),
//                    contentView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//                    contentView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//                    contentView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
//                ])
        
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
            greenView.backgroundColor = .green
            
            let textField1 = UITextField()
            textField1.placeholder = "Текстовое поле 1"
            textField1.borderStyle = .roundedRect
            
            let textField2 = UITextField()
            textField2.placeholder = "Текстовое поле 2"
            textField2.borderStyle = .roundedRect
            
            greenView.addSubview(textField1)
            greenView.addSubview(textField2)
            
            // Настройка constraints для зелёной view
            textField1.translatesAutoresizingMaskIntoConstraints = false
            textField2.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(greenView)
            NSLayoutConstraint.activate([
                
                textField1.topAnchor.constraint(equalTo: greenView.topAnchor, constant: 20),
                textField1.centerXAnchor.constraint(equalTo: greenView.centerXAnchor),
                
                textField2.topAnchor.constraint(equalTo: textField1.bottomAnchor, constant: 20),
               textField2.centerXAnchor.constraint(equalTo: greenView.centerXAnchor),

            ])
            
        case 1:
            let blueView = UIView()
            blueView.backgroundColor = .blue
            
            let button1 = UIButton(type: .system)
            button1.setTitle("Кнопка 1", for: .normal)
            
            let button2 = UIButton(type: .system)
            button2.setTitle("Кнопка 2", for: .normal)
            
            blueView.addSubview(button1)
            blueView.addSubview(button2)
            
            // Настройка constraints для синей view
            button1.translatesAutoresizingMaskIntoConstraints = false
            button2.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(blueView)

            NSLayoutConstraint.activate([
                button1.topAnchor.constraint(equalTo: blueView.topAnchor, constant: 20),
                button1.centerXAnchor.constraint(equalTo: blueView.centerXAnchor),
                
                button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 20),
                button2.centerXAnchor.constraint(equalTo: blueView.centerXAnchor),
            ])
            
        case 2:
            let purpleView = UIView()
            purpleView.backgroundColor = .purple
            
            let imageView1 = UIImageView(image: UIImage(named: "Image1"))
            let imageView2 = UIImageView(image: UIImage(named: "Image2"))
            
            purpleView.addSubview(imageView1)
            purpleView.addSubview(imageView2)
            
            // Настройка constraints для фиолетовой view
            imageView1.translatesAutoresizingMaskIntoConstraints = false
            imageView2.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(purpleView)
            NSLayoutConstraint.activate([
                imageView1.topAnchor.constraint(equalTo: purpleView.topAnchor, constant: 20),
                imageView1.centerXAnchor.constraint(equalTo: purpleView.centerXAnchor),
                
                imageView2.topAnchor.constraint(equalTo: imageView1.bottomAnchor, constant: 20),
                imageView2.centerXAnchor.constraint(equalTo: purpleView.centerXAnchor),
  
            ])
            
        default:
            break
        }
    }
}
