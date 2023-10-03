//
//  Extensions + UITextField.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 26/09/23.
//

import UIKit


extension UITextField {
    
   static func configureTextField(placehouder: String ) -> UITextField {
       let textField = UITextField()
       textField.placeholder = placehouder
       textField.textColor = UIColor(cgColor: CGColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1))
       textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
       textField.layer.borderWidth = 1
       textField.layer.borderColor = CGColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
       textField.layer.cornerRadius = 5
       textField.setLeftPaddingPoints(10)
       return textField
       
    }
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
