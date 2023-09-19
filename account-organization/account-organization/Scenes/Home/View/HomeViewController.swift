//
//  HomeViewController.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 18/09/23.
//

import UIKit



class HomeViewController: UIViewController{
    let headerImage: UIImageView = .headerImageView()
    let labelHistory: UILabel = .textBolLabel(20, description: "Histórico de transação")
    let labeltitleHeader: UILabel = .textBolLabel(25,textColor: .white, description: "Home")
    let tableTransactions: UITableView = UITableView()
    let cellId = "cellId"
    let viewTransactions: UIView = UIView()

    var characters = ["profile-icon", "home-icon"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableTransactions.register(TransactionCell.self, forCellReuseIdentifier: cellId)
        tableTransactions.dataSource = self
        setupView()
    }
    
    func setupView() {
        viewTransactions.backgroundColor = .blue
        view.addSubview(headerImage)
        view.addSubview(labeltitleHeader)
        view.addSubview(labelHistory)
        view.addSubview(tableTransactions)
        view.addSubview(viewTransactions)
        
        viewTransactions.size(size: .init(width: 374, height: 200))
        
        headerImage.fill(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: nil)
        tableTransactions.fill(top: nil,
                       leading: view.leadingAnchor,
                       trailing: view.trailingAnchor,
                       bottom: view.bottomAnchor)
        viewTransactions.layer.cornerRadius = 10

        labeltitleHeader.translatesAutoresizingMaskIntoConstraints = false
        labelHistory.translatesAutoresizingMaskIntoConstraints = false
        viewTransactions.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([ labeltitleHeader.centerXAnchor.constraint(equalTo: headerImage.centerXAnchor),
                                      labeltitleHeader.centerYAnchor.constraint(equalTo: headerImage.centerYAnchor),
                                      labelHistory.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                      labelHistory.topAnchor.constraint(equalTo: viewTransactions.bottomAnchor, constant: 30),
                                      tableTransactions.topAnchor.constraint(equalTo: labelHistory.bottomAnchor, constant: 40),
                                      viewTransactions.topAnchor.constraint(equalTo: labeltitleHeader.bottomAnchor, constant: 60),
                                      viewTransactions.centerXAnchor.constraint(equalTo: headerImage.centerXAnchor)
                                      ])
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return   5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TransactionCell
//        cell.name.text = characters[indexPath.row]
        cell.render(nameImage: "home-icon", infoTitle: "comida japonesa", infoDate: "26/08/2023", infoBalace: "R$ 10,00")
        return cell
    }
}

class TransactionsInfo: UIView {
    
}
