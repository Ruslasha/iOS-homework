//
//  task1ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 13.11.2023.
//

import UIKit

protocol ColorDelegat: class {
    func updateColor(color: String)
}

//protocol ColorDelegate: class {
//    func updateColor(color: String)
//}

class task2ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = "Выбран зеленый"
        
    }
    
    @IBAction func DidTapGreenButton(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "ChangeColorViewController", bundle: nil)
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ChangeColorViewController") as! ChangeColorViewController
        vc.colorDelegate = self
        if let unwrappedTextLabel = textLabel.text {
            vc.textColor = unwrappedTextLabel
        } else {
            return
        }
//        present(vc, animated: true)
        show(vc, sender: nil)
        

    }
    
}

extension task2ViewController: ColorDelegat {
    func updateColor(color: String) {
        textLabel.text = color
    }
    
    
}
