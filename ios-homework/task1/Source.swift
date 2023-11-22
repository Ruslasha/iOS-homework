//
//  Source.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 19.11.2023.
//

struct Source {
    static func allPhotos() -> [Photo] {
        [
            .init(id: 1, imageName: "Image1", alias: "Глупый шрек"),
            .init(id: 2, imageName: "Image2", alias: "Панда"),
            .init(id: 3, imageName: "Image3", alias: "Енот"),
            .init(id: 4, imageName: "Image4", alias: "Веселый енот"),
            .init(id: 5, imageName: "Image5", alias: "Космонавт"),
            .init(id: 6, imageName: "Image6", alias: "Веселый шрек"),
        
        ]
    }
    
    static func randomPhotos(with count: Int) -> [Photo] {
        return (0..<count).map {_ in allPhotos().randomElement()! }
    }
}

struct Photo {
    let id: Int
    let imageName: String
    let alias: String
}

struct SectionPhoto {
    let sectionName: String
    var photos: [Photo]
}
