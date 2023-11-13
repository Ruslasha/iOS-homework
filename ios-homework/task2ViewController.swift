//
//  task1ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 13.11.2023.
//

import UIKit

protocol ColorDelegat: AnyObject {
    func updateColor(color: String)
}

class task2ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = "Выбран зеленый"
        
    }
    
    @IBAction func DidTapGreenButton(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ChangeColorViewController") as! ChangeColorViewController
        vc.colorDelegate = self
        if let unwrappedTextLabel = textLabel.text {
            vc.textColor = unwrappedTextLabel
        } else {
            return
        }
        show(vc, sender: nil)
        

    }
    
}

extension task2ViewController: ColorDelegat {
    func updateColor(color: String) {
        textLabel.text = color
    }
    
    
}
