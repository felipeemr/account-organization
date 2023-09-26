//
//  NewPantryViewController.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 20/09/23.
//

import UIKit


class NewPantryViewController: UIViewController {

    let headerImage: UIImageView = .headerImageView()
    let labeltitleHeader: UILabel = .textBolLabel(25, textColor: .white, description: "Adicionar despesa")
    let labeltitleGasto: UILabel = .textBolLabel(18, textColor: .darkGray, description: "Titulo")
    let textFieldTitle: UITextField = UITextField()
    let stackAddNewPantry: UIStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        
    }
    
    func configureView() {
        
        
        view.addSubview(headerImage)
        view.addSubview(labeltitleHeader)
        view.addSubview(stackAddNewPantry)
        
        stackAddNewPantry.addSubview(labeltitleGasto)
        stackAddNewPantry.addArrangedSubview(textFieldTitle)
        
        labeltitleGasto.fillConstraints(top: stackAddNewPantry.topAnchor,
                                        leading: stackAddNewPantry.leadingAnchor,
                                        trailing: nil,
                                        bottom: nil,padding: .init(top: 20, left: 20, bottom: 0, right: 0))
        
    
        
        headerImage.fillConstraints(top: view.topAnchor,
                         leading: view.leadingAnchor,
                         trailing: view.trailingAnchor,
                         bottom: nil)
        
        labeltitleHeader.textAlignment = .center
        labeltitleHeader.fillConstraints(top: view.topAnchor,
                              leading: view.leadingAnchor,
                              trailing: view.trailingAnchor,
                              bottom: nil,
                              padding: .init(top: 155, left: 0, bottom: 0, right: 0))
        
        stackAddNewPantry.layer.cornerRadius = 10
        stackAddNewPantry.backgroundColor = .white
        stackAddNewPantry.fillConstraints(top: labeltitleHeader.bottomAnchor,
                     leading: view.leadingAnchor,
                     trailing: view.trailingAnchor,
                     bottom: view.bottomAnchor,
                     padding: .init(top: 50, left: 20, bottom: 150, right: 20))
        
    }
}



