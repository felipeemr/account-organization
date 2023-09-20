//
//  TransactionCell.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 18/09/23.
//

import UIKit

class TransactionCell: UITableViewCell {
    var labelTitle: UILabel = .textLabel(12)
    var labelDate: UILabel = .textLabel(8)
    var labelBalace: UILabel = .textBolLabel(10, textColor: .green)
    var imageBalace: UIImageView = .iconImageView(width: 25, heigth: 25, namedIcon: "profile-icon")
    let viewSeparetor: UIView = UIView()
    
  
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupCell()
    }

    public func render(nameImage: String, infoTitle: String, infoDate: String, infoBalace: String) {
        imageBalace.image = UIImage(named: nameImage)
        labelTitle.text = infoTitle
        labelDate.text = infoDate
        labelBalace.text = infoBalace
    }
    
    private func setupCell() {
        let infoStack = UIStackView(arrangedSubviews: [labelTitle, labelDate])
        infoStack.axis = .vertical
        infoStack.spacing = 5
        
        let configStack = UIStackView(arrangedSubviews: [imageBalace, infoStack,viewSeparetor, labelBalace])
               configStack.spacing = 10
        addSubview(configStack)
        configStack.fillSuperView(padding: .init(top: 20,
                                                 left: 30 ,
                                                 bottom: 20,
                                                 right:  30))
    }
    required init?(coder: NSCoder) {
        fatalError()
    }
}
