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
        label.text = "nationalId: \(Wrappers.nationalId )"
        label.textColor = .white
        label.backgroundColor = .blue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let idLabel: UILabel = {
        let label = UILabel()
        label.text = "id: \(Wrappers.id )"
        label.textColor = .white
        label.backgroundColor = .blue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "password: \(Wrappers.password )"
        label.textColor = .white
        label.backgroundColor = .blue
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let isOpenLabel: UILabel = {
        let label = UILabel()
        label.text = "isOpen: \(Wrappers.isOpen)"
        label.textColor = .green
        label.backgroundColor = .orange
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let accessTokenLabel: UILabel = {
        let label = UILabel()
        label.text = "accessToken: \(Wrappers.accessToken ?? "")"
        label.textColor = .green
        label.backgroundColor = .orange
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let countLabel: UILabel = {
        let label = UILabel()
        label.text = "count: \(Wrappers.count ?? 999)"
        label.textColor = .green
        label.backgroundColor = .orange
        
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .gray
        setupData()
        setupLabel()
    }
    
    private func setupData() {
        Wrappers.nationalId = "A123456789"
        Wrappers.password = "ASD21edewk"
        Wrappers.id = "trc0002455"
        Wrappers.isOpen = true
        Wrappers.accessToken = "sdifsidfuhwidofeuhqoeui"
        Wrappers.count = 101
    }
    
    private func setupLabel() {
        self.view.addSubview(nationalIdLabel)
        self.view.addSubview(idLabel)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(isOpenLabel)
        self.view.addSubview(accessTokenLabel)
        self.view.addSubview(countLabel)
        
        NSLayoutConstraint.activate([
            nationalIdLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            nationalIdLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            
            idLabel.centerXAnchor.constraint(equalTo: nationalIdLabel.centerXAnchor),
            idLabel.bottomAnchor.constraint(equalTo: nationalIdLabel.topAnchor, constant: -10),
            
            passwordLabel.centerXAnchor.constraint(equalTo: nationalIdLabel.centerXAnchor),
            passwordLabel.topAnchor.constraint(equalTo: nationalIdLabel.bottomAnchor, constant: 10),
            
            isOpenLabel.centerXAnchor.constraint(equalTo: nationalIdLabel.centerXAnchor),
            isOpenLabel.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 20),
            
            accessTokenLabel.centerXAnchor.constraint(equalTo: nationalIdLabel.centerXAnchor),
            accessTokenLabel.topAnchor.constraint(equalTo: isOpenLabel.bottomAnchor, constant: 20),
            
            countLabel.centerXAnchor.constraint(equalTo: nationalIdLabel.centerXAnchor),
            countLabel.topAnchor.constraint(equalTo: accessTokenLabel.bottomAnchor, constant: 20),
        ])
    }
    
}

