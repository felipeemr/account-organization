//
//  ProfileCell.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit

class ProfileCell: UICollectionViewCell {
    
    let name: UILabel = .textBolLabel(20)
    let iconImage: UIImageView = .iconImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let configStack = UIStackView(arrangedSubviews: [iconImage, name])
        configStack.spacing = 10
        
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
