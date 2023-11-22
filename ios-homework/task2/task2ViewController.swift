////
////  task2ViewController.swift
////  ios-homework
////
////  Created by Руслан Абрамов on 17.11.2023.
////

import UIKit

struct Section {
    let title: String
    let options: [SettingsOption]
}

struct SettingsOption {
    let title: String
    let icon: UIImage
    let iconBackgroundColor: UIColor
    let hanler: (() -> Void)
}

class task2ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return models.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models[section].options.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let model = models[indexPath.section].options[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: SettingTableViewCell.identifier, for: indexPath) as? SettingTableViewCell else {
            return UITableViewCell()
        }
        
        cell.configure(with: model)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(SettingTableViewCell.self, forCellReuseIdentifier: SettingTableViewCell.identifier)
        return table
    }()
    
    var models = [Section]()
    override func viewDidLoad() {
        super.viewDidLoad()
        Configure()
        title = "Setting"
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        
    }
    
    func Configure() {
        models.append(Section(title: "General", options:  [
            SettingsOption(title: "Wifi", icon: UIImage(systemName: "house")!, iconBackgroundColor: .systemPink) {
                
            },
            SettingsOption(title: "Bluetooth", icon: UIImage(systemName: "house")!, iconBackgroundColor: .link) {
                
            },
            SettingsOption(title: "Airplane Mode", icon: UIImage(systemName: "airplane")!, iconBackgroundColor: .systemGreen) {
                
            },
            SettingsOption(title: "iCloud", icon: UIImage(systemName: "cloud")!, iconBackgroundColor: .systemOrange) {
                
            },
            SettingsOption(title: "Wifi", icon: UIImage(systemName: "house")!, iconBackgroundColor: .systemPink) {
                
            },
        ]))
        
        models.append(Section(title: "Other", options:  [
            SettingsOption(title: "Основное", icon: UIImage(systemName: "house")!, iconBackgroundColor: .brown) {
                
            },
            SettingsOption(title: "Звуки", icon: UIImage(systemName: "house")!, iconBackgroundColor: .cyan) {
                
            },
            SettingsOption(title: "Не беспокоить", icon: UIImage(systemName: "airplane")!, iconBackgroundColor: .gray) {
                
            },
            SettingsOption(title: "Уведомления", icon: UIImage(systemName: "cloud")!, iconBackgroundColor: .systemCyan) {
                
            },
        ]))
        
    }
}
