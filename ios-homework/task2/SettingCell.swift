//
//  SettingCellTableViewCell.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 20.11.2023.
//

import UIKit

class SettingCell: UITableViewCell {

    let picture = UIImageView()
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setuoCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setuoCell() {
        [picture, nameLabel].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview($0)
        }
        
        NSLayoutConstraint.activate([
            picture.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            picture.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            picture.heightAnchor.constraint(equalToConstant: 32),
            picture.widthAnchor.constraint(equalToConstant: 32),
            
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            nameLabel.leadingAnchor.constraint(equalTo: picture.trailingAnchor, constant: 8),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
        ])
    }
    
    func configure(setting: Settings) {
        picture.image = setting.image
        nameLabel.text = setting.name
    }
    
}
