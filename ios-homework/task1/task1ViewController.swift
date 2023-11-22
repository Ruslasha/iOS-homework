//
//  task1ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 17.11.2023.
//
import UIKit

class task1ViewController: UIViewController {
    
    private var collectionView: UICollectionView!
    private var searchBar: UISearchBar!
    
    private let source: [Photo] = Source.randomPhotos(with: 15)
    
    override func viewDidLoad() {
        
        setupSearchBar()
        setupCollectionView()
        super.viewDidLoad()
        
    }
    
    private func setupSearchBar() {
        searchBar = UISearchBar()
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(searchBar)
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            searchBar.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            searchBar.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            searchBar.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTapOutsideSearchBar))
        tapGesture.delegate = self
        view.addGestureRecognizer(tapGesture)
        
    }
    
    
    private func setupCollectionView() {
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: setupFlowLayout())
        
        view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            collectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 15),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            collectionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -30),
        ])
        collectionView.dataSource = self
        
        collectionView.register(PhotoCell.self, forCellWithReuseIdentifier: "\(PhotoCell.self)")
    }
    
    private func setupFlowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
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
        let attributedString = NSAttributedString(string: "\(source[indexPath.item].alias)", attributes: [
            NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue
        ])
        
        if source[indexPath.item].alias == "Енот" {
            let normalText = " Пёс"
            let attributes: [NSAttributedString.Key: Any] = [
                NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 17)
            ]
            let normalAttributedString = NSAttributedString(string: normalText, attributes: attributes)
            let finalAttributedString = NSMutableAttributedString()
            finalAttributedString.append(attributedString)
            finalAttributedString.append(normalAttributedString)
            
            cell.labelImage.attributedText = finalAttributedString
        } else {
            cell.labelImage.text = "\(source[indexPath.item].alias)"
        }
        
        return cell
    }
}

extension task1ViewController: UIGestureRecognizerDelegate {
    @objc func handleTapOutsideSearchBar() {
        searchBar.resignFirstResponder()
    }
}

