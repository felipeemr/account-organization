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
    var viewAdd = UIView()
    let labelTitleName: UILabel = .textBolLabel(18, textColor: .darkGray, description: "Nome")
    let textFieldName: UITextField = .configureTextField(placehouder: "Nome")
    let labelTitleSpend: UILabel = .textBolLabel(18, textColor: .darkGray, description: "Gasto")
    let textFieldSpend: UITextField = .configureTextField(placehouder: "Gasto")
    let labelTitleDate: UILabel = .textBolLabel(18, textColor: .darkGray, description: "Data")
    let datePicker: UITextField = .configureTextField(placehouder: "data")

    let buttonSend: UIButton = .sendButton(title: "Enviar")
    let stackView = UIStackView()
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    
    let viewSeparator = {
        let view = UIView()
//        view.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        buttonSend.addTarget(self, action: #selector(nextPass), for: .touchUpInside)
    }
    
    func setupUI() {
        view.addSubview(headerImage)
        view.addSubview(labeltitleHeader)
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(viewAdd)
        viewAdd.addSubview(stackView)
        configureHeader()
        configureViewAdd()
        configureStackView()
        configureScrollView()
    }
    
    private func configureStackView() {

        stackView.fillConstraints(top: viewAdd.topAnchor,
                                  leading: viewAdd.leadingAnchor,
                                  trailing: viewAdd.trailingAnchor,
                                  bottom: viewAdd.bottomAnchor,
                                  padding: .init(top: 20, left: 20, bottom: 20, right: 20))
        stackView.spacing = 20
        stackView.axis = .vertical
        stackView.addArrangedSubview(labelTitleName)
        stackView.addArrangedSubview(textFieldName)
        stackView.addArrangedSubview(labelTitleSpend)
        stackView.addArrangedSubview(textFieldSpend)
        stackView.addArrangedSubview(labelTitleDate)
        stackView.addArrangedSubview(datePicker)
        stackView.addArrangedSubview(viewSeparator)
        stackView.addArrangedSubview(buttonSend)
        textFieldSpend.keyboardType = .numberPad

    }
    
    @objc private func nextPass() {
        if let name = textFieldName.text,
           let spend = textFieldSpend.text {

            print( spend, name)
        }
    }
    
    private func configureHeader() {
        headerImage.fillConstraints(top: view.topAnchor,
                         leading: view.leadingAnchor,
                         trailing: view.trailingAnchor,
                         bottom: nil)

        labeltitleHeader.textAlignment = .center
        labeltitleHeader.fillConstraints(top: view.topAnchor,
                              leading: view.leadingAnchor,
                              trailing: view.trailingAnchor,
                              bottom: nil,
                              padding: .init(top: 120, left: 0, bottom: 0, right: 0))
    }
    
    private func configureScrollView() {
        scrollView.fillConstraints(top: labeltitleHeader.bottomAnchor,
                                   leading: view.leadingAnchor,
                                   trailing: view.trailingAnchor,
                                   bottom: view.bottomAnchor,
                                   padding: .init(top: 20, left: 0, bottom: 0, right: 0))
        
        contentView.fillConstraints(top: scrollView.topAnchor,
                                    leading: scrollView.leadingAnchor,
                                    trailing: scrollView.trailingAnchor,
                                    bottom: scrollView.bottomAnchor,
                                    padding: .init(top: 20, left: 20, bottom: 0, right: 20))
        
        contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
    }
    
    private func configureViewAdd() {
        viewAdd.layer.cornerRadius = 10
        viewAdd.fillConstraints(top: contentView.topAnchor,
                                leading: contentView.leadingAnchor,
                                trailing: contentView.trailingAnchor,
                                bottom: contentView.bottomAnchor,
                                padding: .init(top: 20, left: 20, bottom: 150, right: 20))
        viewAdd.backgroundColor = .white
        viewAdd.layer.borderWidth = 1
        viewAdd.layer.borderColor = CGColor(red: 151/255, green: 151/255, blue: 151/255, alpha: 1)
    }
}
