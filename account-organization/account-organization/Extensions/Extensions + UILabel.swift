//
//  Extensions + UILabel.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit

extension UILabel{
    static func textLabel (_ size: CGFloat, textColor: UIColor = .black, numberOfLines: Int = 1, description: String = "")-> UILabel{
        let label = UILabel()
        label.text = description
        label.font = UIFont.systemFont(ofSize: size)
        label.textColor = textColor
        label.numberOfLines = numberOfLines
        return label
    }
    
    static func textBolLabel (_ size: CGFloat, textColor: UIColor = .black, numberOfLines: Int = 1, description: String = "")-> UILabel {
        
        let label = UILabel()
        label.text = description
        label.font = UIFont.boldSystemFont(ofSize: size)
        label.textColor = textColor
        label.numberOfLines = numberOfLines
        return label
    }
    func addShandow () {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 2.0
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.masksToBounds = false
    }
    
}
