//
//  task2ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 17.11.2023.
//

import UIKit

class task2ViewController: UIViewController {
    
    var settings = SourceSettings.makeSettings()
    
    let tableView: UITableView = .init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabelView()
        
        tableView.register(SettingCell.self, forCellReuseIdentifier: "SettingCell")
        
        tableView.dataSource = self
        tableView.delegate = self
        
    }
}

extension task2ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingCell", for: indexPath) as? SettingCell else {
            fatalError()
        }
        
        cell.configure(setting: settings[indexPath.row])
        return cell
    }
    
    
}

extension task2ViewController: UITableViewDelegate {
    
}

extension task2ViewController {
    func setupTabelView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate ([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
}
