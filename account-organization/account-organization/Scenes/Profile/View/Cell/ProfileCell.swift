//
//  ProfileCell.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit

class ProfileCell: UITableViewCell {
    
    var name: UILabel = .textBolLabel(20)
    var iconImage: UIImageView = .iconImageView(width: 30, heigth: 30, namedIcon: "profile-icon")
    
  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        let configStack = UIStackView(arrangedSubviews: [iconImage, name])
               configStack.spacing = 30
        name.text = "Perfil"
        addSubview(configStack)
        configStack.fillSuperView(padding: .init(top: 10,
                                                 left: 50 ,
                                                 bottom: 10,
                                                 right: 10))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }    
}
