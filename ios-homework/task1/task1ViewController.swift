//
//  task1ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 17.11.2023.
//
import UIKit

class task1ViewController: UIViewController {
    
    var collectionView: UICollectionView!
    
    let source: [Photo] = Source.randomPhotos(with: 10)
    
    override func viewDidLoad() {
        
        setupCollectionView()
        
        super.viewDidLoad()
        
    }
    
    func setupCollectionView() {
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: setupFlowLayout())
        
        view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
        ])
        collectionView.dataSource = self
        
        collectionView.register(PhotoCell.self, forCellWithReuseIdentifier: "\(PhotoCell.self)")
    }
    
    func setupFlowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
//        layout.itemSize = .init(width: 150, height: 150)
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        layout.minimumLineSpacing = 15
        return layout
    }
}

extension task1ViewController:UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        source.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  "\(PhotoCell.self)", for: indexPath) as? PhotoCell else {
            return UICollectionViewCell()
        }
        
        cell.imageView.image = UIImage(named: source[indexPath.item].imageName)
        return cell
    }
    
     
}
