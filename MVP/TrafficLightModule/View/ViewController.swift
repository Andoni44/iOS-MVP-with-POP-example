//
//  ViewController.swift
//  MVP
//
//  Created by Andoni on 26/05/2020.
//  Copyright © 2020 Andoni. All rights reserved.
//

import UIKit

//MARK: Properties
class ViewController: UIViewController {
    
    var trafficLightPresenter: TrafficLightPresenterProtocol?
    
    let redLight: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        return view
    }()
    
    let orangeLight: UIView = {
        let view = UIView()
        view.backgroundColor = .orange
        return view
    }()
    
    let greenLight: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    let label: UILabel = {
        let view = UILabel()
        
        return view
    }()
    
    let lightContainer: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 40
        view.alignment = .center
        return view
    }()
    
    let body: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 20
        view.alignment = .center
        return view
    }()
}

//MARK: - Life cycle
extension ViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        let redTap = UITapGestureRecognizer(target: self, action: #selector(setRedLight))
        redLight.addGestureRecognizer(redTap)
        let greenTap = UITapGestureRecognizer(target: self, action: #selector(setGreenLight))
        greenLight.addGestureRecognizer(greenTap)
        let orangeTap = UITapGestureRecognizer(target: self, action: #selector(setOrangeLight))
        orangeLight.addGestureRecognizer(orangeTap)
    }
}

//MARK: - View delegate
extension ViewController: TrafficLightViewDelegate {
    func displayTrafficLight(description: (String)) {
        label.text = description
    }
}

//MARK: - Private
private extension ViewController {
    func setupViews() {
        [redLight, greenLight, orangeLight].forEach {
            lightContainer.addArrangedSubview($0)
        }
        redLight.anchor(topAnchor: nil, trailingAnchor: nil, bottomAnchor: nil, leadingAnchor: nil, padding: .zero, size: .init(width: 50, height: 50))
        orangeLight.anchor(topAnchor: nil, trailingAnchor: nil, bottomAnchor: nil, leadingAnchor: nil, padding: .zero, size: .init(width: 50, height: 50))
        greenLight.anchor(topAnchor: nil, trailingAnchor: nil, bottomAnchor: nil, leadingAnchor: nil, padding: .zero, size: .init(width: 50, height: 50))
        
        [lightContainer, label].forEach {
            body.addArrangedSubview($0)
        }
        
        view.addSubview(body)
        
        body.translatesAutoresizingMaskIntoConstraints = false
        body.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        body.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func setRedLight() {
        trafficLightPresenter?.trafficLightColorSelected(colorName: "red")
    }
    
    @objc func setOrangeLight() {
        trafficLightPresenter?.trafficLightColorSelected(colorName: "orange")
    }
    
    @objc func setGreenLight() {
        trafficLightPresenter?.trafficLightColorSelected(colorName: "green")
    }
}


