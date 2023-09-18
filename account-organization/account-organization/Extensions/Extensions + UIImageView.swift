//
//  Extensions + UIImageView.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit


extension UIImageView {
    
    static func iconImageView(width: Int = 120, heigth: Int = 120, namedIcon: String) -> UIImageView {
        let image = UIImageView(image: UIImage(named: namedIcon))
        
        image.size(size: .init(width: width, height: heigth))
        image.layer.borderWidth = 0.5
        image.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        image.layer.cornerRadius = CGFloat(heigth / 2)
        image.clipsToBounds = true
        
        return image
    }
    
    
   static func headerImageView() -> UIImageView {
        let imageView = UIImageView(image: UIImage(named: "home_retangle"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(equalToConstant: 310).isActive = true
        
        return imageView
    }

    
}



