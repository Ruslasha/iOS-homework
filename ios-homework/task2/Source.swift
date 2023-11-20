//
//  Source.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 20.11.2023.
//

import UIKit

struct Settings {
    let name: String
    let image: UIImage
}

struct ImageName {
    static let image = "Image1"
}

struct SourceSettings {
    static func makeSettings() -> [Settings] {
        [
            .init(name: "Авиарежим", image: .init(systemName: ImageName.image)!),
            .init(name: "Wi-fi", image: .init(systemName: ImageName.image)!),
            .init(name: "Bkuetooth", image: .init(systemName: ImageName.image)!),
            .init(name: "Сотовая связь", image: .init(systemName: ImageName.image)!),
        ]
    }
}

//struct SourceSettings {
//    static func allPicture() -> [PictureSettings] {
//        [
//            .init(id: 1, imageName: "Image1"),
//            .init(id: 2, imageName: "Image2"),
//            .init(id: 3, imageName: "Image3"),
//            .init(id: 4, imageName: "Image4"),
//            .init(id: 5, imageName: "Image5"),
//            .init(id: 6, imageName: "Image6"),
//        
//        ]
//    }
//    
//    static func randomPicture(with count: Int) -> [PictureSettings] {
//        return (0..<count).map {_ in allPicture().randomElement()! }
//    }
//}
//
//struct PictureSettings {
//    let id: Int
//    let imageName: String
//}
//
//struct SectionPicture {
//    let sectionName: String
//    var picture: [PictureSettings]
//}
