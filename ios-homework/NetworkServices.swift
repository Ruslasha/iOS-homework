//
//  NetworkServices.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 25.11.2023.
//

import Foundation
import UIKit

final class NetworkServices {
    
    func loadData(for character: Character, completion: @escaping (Result<Character, Error>) -> Void) {
        guard let url = URL(string: "https://rickandmortyapi.com/api/character/\(character.id)") else {
            completion(.failure(NetworkError.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                completion(.failure(NetworkError.noData))
                return
            }
            
            do {
                let characterDetails = try JSONDecoder().decode(Character.self, from: data)
                completion(.success(characterDetails))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
    
    func loadImage(from urlString: String, completion: @escaping (Result<UIImage?, Error>) -> Void) {
          guard let url = URL(string: urlString) else {
              completion(.failure(NetworkError.invalidURL))
              return
          }
          
          URLSession.shared.dataTask(with: url) { (data, response, error) in
              if let error = error {
                  completion(.failure(error))
                  return
              }
              
              if let data = data {
                  let image = UIImage(data: data)
                  completion(.success(image))
              }
          }.resume()
      }

    
    enum NetworkError: Error {
        case invalidURL
        case noData
    }
}


