//
//  ProfileCell.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit

class ProfileCell: UITableViewCell {
    
    var labelInfo: UILabel = .textBolLabel(20)
    var iconImage: UIImageView = .iconImageView(width: 40, heigth: 40, namedIcon: "profile-icon")
    
  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }

    public func render(nameImage: String, info: String) {
        iconImage.image = UIImage(named: nameImage)
        labelInfo.text = info
    }
    
    private func setupCell() {
        let configStack = UIStackView(arrangedSubviews: [iconImage, labelInfo])
               configStack.spacing = 30
        addSubview(configStack)
        configStack.fillSuperView(padding: .init(top: 20,
                                                 left: 50 ,
                                                 bottom: 20,
                                                 right: 20))
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
