//
//  CharacterCell.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 23.11.2023.
//

import Foundation
import UIKit

class CharacterCell: UICollectionViewCell {
    private let characterImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let statusLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let locationLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        setupCellAppearance()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setupViews()
        setupCellAppearance()
    }
    
    private func setupViews() {
        contentView.addSubview(characterImageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(statusLabel)
        contentView.addSubview(locationLabel)
        
        NSLayoutConstraint.activate([
            characterImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            characterImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            characterImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            characterImageView.widthAnchor.constraint(equalTo: characterImageView.heightAnchor),

            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            statusLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            statusLabel.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 10),
            statusLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            locationLabel.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 4),
            locationLabel.leadingAnchor.constraint(equalTo: characterImageView.trailingAnchor, constant: 10),
            locationLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
        ])
    }
    
    private func setupCellAppearance() {
        let red = CGFloat(66) / 255.0
        let green = CGFloat(66) / 255.0
        let blue = CGFloat(66) / 255.0

        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        layer.backgroundColor = color.cgColor
        layer.cornerRadius = 15
        layer.masksToBounds = true
    }

    
    func configure(with character: Character) {
        nameLabel.text = character.name
        var circleLive = ""
        if character.status == "Alive" {
            circleLive = "\u{1F7E2}"
        } else {
            circleLive = "\u{1F534}"
        }
        statusLabel.text = circleLive + " \(character.status)"
        locationLabel.text = "\u{1F30E} \(character.location.name)"
        
        if let url = URL(string: character.image) {
            DispatchQueue.global().async {
                if let data = try? Data(contentsOf: url) {
                    DispatchQueue.main.async {
                        self.characterImageView.image = UIImage(data: data)
                    }
                }
            }
        }
    }
}
