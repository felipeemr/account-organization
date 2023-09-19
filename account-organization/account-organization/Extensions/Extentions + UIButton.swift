//
//  Extentions + UIButton.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 18/09/23.
//

import UIKit

extension UIButton {
    
    static func floatButton() -> UIButton {

        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 70, height: 70)
        button.center = CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - 80)
        button.backgroundColor = UIColor(red: 14/255, green: 41/255, blue: 84/255, alpha: 1)
        button.layer.cornerRadius = 35
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
        
    }
}
