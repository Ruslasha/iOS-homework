//
//  task1ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 15.11.2023.
//

import UIKit

class task1ViewController: UIViewController {
    
    @IBAction func didTapTask11(_ sender: Any) {
        let storyboard = UIStoryboard(name: "task1ViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "task11") as! task11
        present(vc, animated: true)
    }
    
    @IBAction func didTapTask12(_ sender: Any) {
        let storyboard = UIStoryboard(name: "task1ViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "task12") as! task12
        present(vc, animated: true)
    }
    
    @IBAction func didTapTask13(_ sender: Any) {
        let storyboard = UIStoryboard(name: "task1ViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "task13") as! task13
        present(vc, animated: true)
    }
    
    @IBAction func didPatTask14(_ sender: Any) {
        let storyboard = UIStoryboard(name: "task1ViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "task14") as! task14
        present(vc, animated: true)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

    
class task11: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let greenButton = UIButton()
        greenButton.backgroundColor = .green
        greenButton.setTitle("Green", for: .normal)
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenButton)
        
        let blueButton = UIButton()
        blueButton.backgroundColor = .blue
        blueButton.setTitle("Blue", for: .normal)
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueButton)
        
        let yellowButton = UIButton()
        yellowButton.backgroundColor = .yellow
        yellowButton.setTitle("Yellow", for: .normal)
        yellowButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(yellowButton)
        
        NSLayoutConstraint.activate([
            greenButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            blueButton.leadingAnchor.constraint(equalTo: greenButton.trailingAnchor, constant: 4),
            yellowButton.leadingAnchor.constraint(equalTo: blueButton.trailingAnchor, constant: 4),
            yellowButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            greenButton.widthAnchor.constraint(equalTo: blueButton.widthAnchor),
            blueButton.widthAnchor.constraint(equalTo: yellowButton.widthAnchor),
            
            greenButton.heightAnchor.constraint(equalToConstant: 50),
            greenButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
            blueButton.heightAnchor.constraint(equalToConstant: 50),
            blueButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
            yellowButton.heightAnchor.constraint(equalToConstant: 50),
            yellowButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 8),
        ])
    }
}
class task12: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        let greenButton = UIButton()
        greenButton.backgroundColor = .green
        greenButton.setTitle("Green", for: .normal)
        stackView.addArrangedSubview(greenButton)
        
        let blueButton = UIButton()
        blueButton.backgroundColor = .blue
        blueButton.setTitle("Blue", for: .normal)
        stackView.addArrangedSubview(blueButton)
        
        let yellowButton = UIButton()
        yellowButton.backgroundColor = .yellow
        yellowButton.setTitle("Yellow", for: .normal)
        stackView.addArrangedSubview(yellowButton)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -8),
            stackView.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
class task13: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let greenButton = UIButton()
        greenButton.backgroundColor = .green
        greenButton.setTitle("Green", for: .normal)
        greenButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenButton)
        
        let blueButton = UIButton()
        blueButton.backgroundColor = .blue
        blueButton.setTitle("Blue", for: .normal)
        blueButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blueButton)
        
        let yellowButton = UIButton()
        yellowButton.backgroundColor = .yellow
        yellowButton.setTitle("Yellow", for: .normal)
        yellowButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(yellowButton)
        
        NSLayoutConstraint.activate([
            greenButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            greenButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            blueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            blueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            yellowButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            yellowButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            
            greenButton.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.height * 0.25),
            blueButton.topAnchor.constraint(equalTo: greenButton.bottomAnchor, constant: 4),
            yellowButton.topAnchor.constraint(equalTo: blueButton.bottomAnchor, constant: 4),
            yellowButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.bounds.height * 0.25),
            
            greenButton.heightAnchor.constraint(equalTo: yellowButton.heightAnchor),
            blueButton.heightAnchor.constraint(equalTo: yellowButton.heightAnchor),
        ])
        
    }
}
class task14: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        let greenButton = UIButton()
        greenButton.backgroundColor = .green
        greenButton.setTitle("Green", for: .normal)
        stackView.addArrangedSubview(greenButton)
        
        let blueButton = UIButton()
        blueButton.backgroundColor = .blue
        blueButton.setTitle("Blue", for: .normal)
        stackView.addArrangedSubview(blueButton)
        
        let yellowButton = UIButton()
        yellowButton.backgroundColor = .yellow
        yellowButton.setTitle("Yellow", for: .normal)
        stackView.addArrangedSubview(yellowButton)
        
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.height * 0.25),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -view.bounds.height * 0.25),
        ])
        
    }
}

