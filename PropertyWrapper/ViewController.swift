//
//  ViewController.swift
//  PropertyWrapper
//
//  Created by chijung chan  on 2023/5/8.
//

import UIKit

class ViewController: UIViewController {
    
    let nationalIdLabel: UILabel = {
        let label = UILabel()
        label.text = "nationalId \(Wrappers.nationalId)"
        label.textColor = .white
        label.backgroundColor = .blue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let idLabel: UILabel = {
        let label = UILabel()
        label.text = "id \(Wrappers.id)"
        label.textColor = .white
        label.backgroundColor = .blue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "password \(Wrappers.password)"
        label.textColor = .white
        label.backgroundColor = .blue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        Wrappers.nationalId = "A123456789"
        Wrappers.password = "ASD21edewk"
        Wrappers.id = "trc0002455"
        setupLabel()
    }

    func setupLabel() {
        self.view.addSubview(nationalIdLabel)
        self.view.addSubview(idLabel)
        self.view.addSubview(passwordLabel)

        NSLayoutConstraint.activate([
            nationalIdLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            nationalIdLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            idLabel.centerXAnchor.constraint(equalTo: nationalIdLabel.centerXAnchor),
            idLabel.bottomAnchor.constraint(equalTo: nationalIdLabel.topAnchor, constant: -10),
            
            passwordLabel.centerXAnchor.constraint(equalTo: nationalIdLabel.centerXAnchor),
            passwordLabel.topAnchor.constraint(equalTo: nationalIdLabel.bottomAnchor, constant: 10),

        ])
    }
    
    
}

