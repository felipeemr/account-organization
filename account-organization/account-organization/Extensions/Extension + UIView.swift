//
//  Extension + UIView.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit

extension UIView {
    
    func fillConstraints(top: NSLayoutYAxisAnchor?,
               leading: NSLayoutXAxisAnchor?,
               trailing: NSLayoutXAxisAnchor?,
               bottom: NSLayoutYAxisAnchor?,
               padding: UIEdgeInsets = .zero,
               size: CGSize = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    func fillSuperView(padding: UIEdgeInsets = .zero) {
        fillConstraints(
            top: superview?.topAnchor,
            leading: superview?.leadingAnchor,
            trailing: superview?.trailingAnchor,
            bottom: superview?.bottomAnchor,
            padding: padding
        )
    }
    
    func centerSuperview (size: CGSize = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let superviewCenterX = superview?.centerXAnchor {
            centerXAnchor.constraint(equalTo: superviewCenterX).isActive = true
        }
        
        if let superviewCenterY = superview?.centerYAnchor {
            centerYAnchor.constraint(equalTo: superviewCenterY).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
        
    }
    func size ( size: CGSize = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if size.width != 0 {
            widthAnchor.constraint(equalToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(equalToConstant: size.height).isActive = true
        }
    }
    
    func configureHeader(_ headerImage: UIImageView, labeltitleHeader: UILabel) {
        
        
        headerImage.fillConstraints(top: superview?.topAnchor,
                         leading: superview?.leadingAnchor,
                         trailing: superview?.trailingAnchor,
                         bottom: nil)
        
        labeltitleHeader.textAlignment = .center
        labeltitleHeader.fillConstraints(top: headerImage.topAnchor,
                              leading: headerImage.leadingAnchor,
                              trailing: headerImage.trailingAnchor,
                              bottom: nil,
                              padding: .init(top: 155, left: 0, bottom: 0, right: 0))
    }
    
     static func configureHeaderView(viewReference: UIView, titleHeader: String) {
        let headerImage: UIImageView = .headerImageView()
        let labeltitleHeader: UILabel = .textBolLabel(22,textColor: .white, description: titleHeader)
        headerImage.fillConstraints(top: viewReference.topAnchor,
                         leading: viewReference.leadingAnchor,
                         trailing: viewReference.trailingAnchor,
                         bottom: nil)

        labeltitleHeader.textAlignment = .center
        labeltitleHeader.fillConstraints(top: viewReference.topAnchor,
                              leading: viewReference.leadingAnchor,
                              trailing: viewReference.trailingAnchor,
                              bottom: nil,
                              padding: .init(top: 120, left: 0, bottom: 0, right: 0))
    }
    
    
}

