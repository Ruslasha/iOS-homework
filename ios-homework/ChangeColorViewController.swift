//
//  ChangeColorViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 13.11.2023.
//

import UIKit

class ChangeColorViewController: UIViewController {

    weak var colorDelegate: ColorDelegat?
    var textColor = ""
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = textColor
        
    }
    
    @IBAction func ChangeGreen(_ sender: Any) {
        colorDelegate?.updateColor(color: "Выбран зеленый")
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func ChangeBlue(_ sender: Any) {
        colorDelegate?.updateColor(color: "Выбран синий")
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func ChangeRed(_ sender: Any) {
        colorDelegate?.updateColor(color: "Выбран красный")
        self.dismiss(animated: true, completion: nil)
    }
}
