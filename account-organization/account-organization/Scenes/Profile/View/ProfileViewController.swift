//
//  ProfileViewController.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit


class ProfileViewController: UIViewController {
    
    let headerImage: UIImageView = .headerImageView()
    let iconImage: UIImageView = .iconImageView( namedIcon: "profile")
    let labelName: UILabel = .textBolLabel(25)
    let tableInfo: UITableView = UITableView()
    var cellId = "cellId"
    var characters = ["Informações da Conta", "Privacidade"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = "Felipe Moraes"
        tableInfo.register(ProfileCell.self, forCellReuseIdentifier: cellId)
        tableInfo.dataSource = self
        setupConstraints()

    }

    func setupConstraints() {
        view.addSubview(headerImage)
        view.addSubview(iconImage)
        view.addSubview(labelName)
        view.addSubview(tableInfo)
        headerImage.fill(top: view.topAnchor,
                         leading: view.leadingAnchor,
                         trailing: view.trailingAnchor,
                         bottom: nil)
        tableInfo.fill(top: nil,
                       leading: view.leadingAnchor,
                       trailing: view.trailingAnchor,
                       bottom: view.bottomAnchor)
        
        
        labelName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            iconImage.centerXAnchor.constraint(equalTo: headerImage.centerXAnchor),
            iconImage.topAnchor.constraint(equalTo: headerImage.bottomAnchor, constant: -60),
            labelName.centerXAnchor.constraint(equalTo: iconImage.centerXAnchor),
            labelName.topAnchor.constraint(equalTo: iconImage.bottomAnchor, constant: 10),
            tableInfo.topAnchor.constraint(equalTo: labelName.bottomAnchor, constant: 100)
        ])
    }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProfileCell
        cell.name.text = characters[indexPath.row]
        return cell
    }
}
