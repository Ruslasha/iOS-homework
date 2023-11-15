//
//  task2ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 15.11.2023.
//

import UIKit

class task2ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        let leftLabel = UILabel()
        leftLabel.text = "тексттексттексттексттексттексттекст"
        leftLabel.backgroundColor = .green
        leftLabel.translatesAutoresizingMaskIntoConstraints = false
        leftLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        stackView.addArrangedSubview(leftLabel)
        
        let rightLabel = UILabel()
        rightLabel.text = "тексттексттексттексттексттекст"
        rightLabel.backgroundColor = .blue
        rightLabel.translatesAutoresizingMaskIntoConstraints = false
        rightLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        stackView.addArrangedSubview(rightLabel)
        
        rightLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 40).isActive = true
        
        NSLayoutConstraint.activate([
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 8)
        ])
        
    }
}
