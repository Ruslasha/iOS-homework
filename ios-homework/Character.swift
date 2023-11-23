//
//  Character.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 23.11.2023.
//

import Foundation

struct Character: Decodable {
    
    let id: Int
    let name: String
    let status: String
    let species: String
    let image: String
    let gender: Gender
}

enum Gender: String, Codable {
    case female = "Female"
    case male = "Male"
    case unknown = "unknown"
}
