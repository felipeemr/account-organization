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
    let labelName: UILabel = .textBolLabel(25, description: "Felipe Moraes")
    let labelTitleHeader: UILabel = .textLabel(25, textColor: .white, description: "Perfil")
    let tableInfo: UITableView = UITableView()
    var cellId = "cellId"
    var characters = ["profile-icon", "home-icon"]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableInfo.register(ProfileCell.self, forCellReuseIdentifier: cellId)
        tableInfo.dataSource = self
        setupConstraints()

    }

    func setupConstraints() {
        view.addSubview(headerImage)
        view.addSubview(labelTitleHeader)
        view.addSubview(iconImage)
        view.addSubview(labelName)
        view.addSubview(tableInfo)
        
        headerImage.fill(top: view.topAnchor,
                         leading: view.leadingAnchor,
                         trailing: view.trailingAnchor,
                         bottom: nil)
        
        labelTitleHeader.textAlignment = .center
        labelTitleHeader.fill(top: headerImage.topAnchor,
                              leading: headerImage.leadingAnchor,
                              trailing: headerImage.trailingAnchor,
                              bottom: nil,
                              padding: .init(top: 155, left: 0, bottom: 0, right: 0))
        
        iconImage.fill(top: headerImage.bottomAnchor,
                       leading: headerImage.centerXAnchor,
                       trailing: nil,
                       bottom: nil,
                       padding: .init(top: -60, left: -60, bottom: 0, right: 0))

        labelName.textAlignment = .center
        labelName.fill(top: iconImage.bottomAnchor,
                       leading: view.leadingAnchor,
                       trailing: view.trailingAnchor,
                       bottom: nil,
                       padding: .init(top: 10, left: 0, bottom: 0, right: 0))
        
        tableInfo.fill(top: labelName.bottomAnchor,
                       leading: view.leadingAnchor,
                       trailing: view.trailingAnchor,
                       bottom: view.bottomAnchor, padding: .init(top: 80, left: 0, bottom: 0, right: 0))
    }
}

extension ProfileViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! ProfileCell
        cell.selectionStyle = .none
        cell.render(nameImage: characters[indexPath.row], info: characters[indexPath.row])
        return cell
    }
}
