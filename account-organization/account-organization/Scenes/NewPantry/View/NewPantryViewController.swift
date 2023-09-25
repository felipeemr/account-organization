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
    let labeltitleGasto: UILabel = .textBolLabel(25, textColor: .black, description: "Titulo")
    let viewAdd: UIStackView = UIStackView()
    let textFieldTitle: UITextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        
    }
    
    func configureView() {
        view.addSubview(headerImage)
        view.addSubview(labeltitleHeader)
        view.addSubview(viewAdd)
        viewAdd.addSubview(labeltitleGasto)
        
        
        headerImage.fill(top: view.topAnchor,
                         leading: view.leadingAnchor,
                         trailing: view.trailingAnchor,
                         bottom: nil)
        
        labeltitleHeader.textAlignment = .center
        labeltitleHeader.fill(top: view.topAnchor,
                              leading: view.leadingAnchor,
                              trailing: view.trailingAnchor,
                              bottom: nil,
                              padding: .init(top: 155, left: 0, bottom: 0, right: 0))
        
        viewAdd.layer.cornerRadius = 10
        viewAdd.backgroundColor = .white
        viewAdd.fill(top: labeltitleHeader.bottomAnchor,
                     leading: view.leadingAnchor,
                     trailing: view.trailingAnchor,
                     bottom: view.bottomAnchor,
                     padding: .init(top: 50, left: 20, bottom: 150, right: 20))
        
    }
}



