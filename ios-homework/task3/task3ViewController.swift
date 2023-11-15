//
//  task3ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 15.11.2023.
//

import UIKit

class task3ViewController: UIViewController {
    
    var labelHeightConstraint: NSLayoutConstraint!
    let label: UILabel = {
        let label = UILabel()
        label.text = "Приходит программист к другу-пианисту – посмотреть на новый рояль. Долго ходит вокруг, хмыкает, потом заявляет: \n - Клава неудобная – всего 84 клавиши, половина функциональных, ни одна не подписана; хотя... шифт нажимать ногой – это оригинально!"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        
        let button = UIButton()
        button.setTitle("Свернуть/Развернуть", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        labelHeightConstraint = label.heightAnchor.constraint(equalToConstant: 0)
        labelHeightConstraint.isActive = true
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        button.addTarget(self, action: #selector(toggleText), for: .touchUpInside)
    }
    
    @objc func toggleText() {
        UIView.animate(withDuration: 0.5) {
            if self.labelHeightConstraint.constant == 0 {
                self.labelHeightConstraint.constant = self.label.intrinsicContentSize.height
            } else {
                self.labelHeightConstraint.constant = 0
            }
            
            self.view.layoutIfNeeded()
        }
    }
}
