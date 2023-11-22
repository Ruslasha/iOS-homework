//
//  task3ViewController.swift
//  ios-homework
//
//  Created by Руслан Абрамов on 17.11.2023.
//
//
import UIKit
import MapKit

final class task3ViewController: UIViewController {

    private let scrollView = UIScrollView()
    
    private let labelDescription = UILabel()
    private let mapView = MKMapView()
    private let buttonBlue = UIButton()
    private let buttonRed = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()
        setupLabelDescription()
        setupMapView()
        setupButtons()
    }

    func setupScrollView() {
        scrollView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 200)
        
        let imageNames = ["Image1", "Image2", "Image3", "Image4"]
        
        for (index, imageName) in imageNames.enumerated() {
            let imageView = UIImageView(image: UIImage(named: imageName))
            imageView.frame = CGRect(x: scrollView.frame.width * CGFloat(index), y: 0, width: scrollView.frame.width, height: scrollView.frame.height)
            imageView.contentMode = .scaleAspectFit
            scrollView.addSubview(imageView)
        }
        
        scrollView.contentSize = CGSize(width: scrollView.frame.width * CGFloat(imageNames.count), height: scrollView.frame.height)
        
        view.addSubview(scrollView)
    }

    func setupLabelDescription() {
        labelDescription.text = "Below is the world map!"
        labelDescription.font = UIFont.boldSystemFont(ofSize: 24)
        labelDescription.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelDescription)
        
        NSLayoutConstraint.activate([
            labelDescription.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 15),
            labelDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            labelDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
        ])
    }

    func setupMapView() {
        mapView.mapType = .standard
        mapView.showsUserLocation = true
        mapView.layer.cornerRadius = 20
        mapView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mapView)
        
        NSLayoutConstraint.activate([
            mapView.topAnchor.constraint(equalTo: labelDescription.bottomAnchor, constant: 15),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            mapView.heightAnchor.constraint(equalToConstant: 200)
        ])
    }

    func setupButtons() {
        buttonBlue.translatesAutoresizingMaskIntoConstraints = false
        buttonBlue.setTitle("Button blue", for: .normal)
        buttonBlue.backgroundColor = .blue
        buttonBlue.layer.cornerRadius = 10
        view.addSubview(buttonBlue)
        
        buttonRed.translatesAutoresizingMaskIntoConstraints = false
        buttonRed.setTitle("Button red", for: .normal)
        buttonRed.setTitleColor(.red, for: .normal)
        buttonRed.backgroundColor = .white
        buttonRed.layer.cornerRadius = 10
        buttonRed.layer.borderWidth = 1
        buttonRed.layer.borderColor = UIColor.red.cgColor

        view.addSubview(buttonRed)
        
        NSLayoutConstraint.activate([
            buttonBlue.topAnchor.constraint(equalTo: mapView.bottomAnchor, constant: 15),
            buttonBlue.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            buttonBlue.heightAnchor.constraint(equalToConstant: 50),
            buttonBlue.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            buttonRed.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonRed.topAnchor.constraint(equalTo: buttonBlue.bottomAnchor, constant: 10),
            buttonRed.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            buttonRed.heightAnchor.constraint(equalToConstant: 50),
        ])
    }

}



