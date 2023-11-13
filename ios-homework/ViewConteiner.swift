//
//  ChangeColorViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 13.11.2023.
//

import UIKit

class ViewConteiner: UIViewController {

//    weak var colorDelegate: ColorDelegate?
    var textColor = ""
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = textColor
        
    }
    
    @IBAction func ChangeGreen(_ sender: Any) {
        
    }
    @IBAction func ChangeYellow(_ sender: Any) {
      
    }
    @IBAction func ChangePurple(_ sender: Any) {
        
    }}
