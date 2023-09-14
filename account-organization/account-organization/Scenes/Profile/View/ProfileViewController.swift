//
//  ProfileViewController.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit


class ProfileViewController: UIViewController {
    
    let headerImage: UIImageView = .headerImageView()
    let iconImage: UIImageView = .iconImageView()
    let labelName: UILabel = .textLabel(20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = "Felipe Moraes"
        view.addSubview(headerImage)
        view.addSubview(iconImage)
        view.addSubview(labelName)
        headerImage.fill(top: view.topAnchor,
                         leading: view.leadingAnchor,
                         trailing: view.trailingAnchor,
                         bottom: nil)
        
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        labelName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            iconImage.centerXAnchor.constraint(equalTo: headerImage.centerXAnchor),
            iconImage.topAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: -60),
            labelName.centerXAnchor.constraint(equalTo: iconImage.centerXAnchor),
            labelName.topAnchor.constraint(equalTo: iconImage.bottomAnchor, constant: 10)
        ])
    }
    
}
