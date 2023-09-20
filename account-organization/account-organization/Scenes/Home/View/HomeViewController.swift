//
//  HomeViewController.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 18/09/23.
//

import UIKit



class HomeViewController: UIViewController{
    let headerImage: UIImageView = .headerImageView()
    let viewTransactions: UIView = CardInformation()
    let labelHistory: UILabel = .textBolLabel(18, description: "Histórico de transação")
    let labelHistoryAll: UILabel = .textLabel(12, description: "Mostrar todos")
    let labeltitleHeader: UILabel = .textBolLabel(22,textColor: .white, description: "Home")
    let tableTransactions: UITableView = UITableView()
    let cellId = "cellId"

    var characters = ["profile-icon", "home-icon"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableTransactions.register(TransactionCell.self, forCellReuseIdentifier: cellId)
        tableTransactions.dataSource = self
        setupView()
    }
    
    func setupView() {
        
        
        let stackHitoryTransactions = UIStackView(arrangedSubviews: [labelHistory, labelHistoryAll])
        stackHitoryTransactions.axis = .horizontal
        stackHitoryTransactions.spacing = 30
        
        view.addSubview(headerImage)
        view.addSubview(labeltitleHeader)
        view.addSubview(viewTransactions)
        view.addSubview(stackHitoryTransactions)
        view.addSubview(tableTransactions)
        
        viewTransactions.size(size: .init(width: 374,
                                          height: 200))
        
        headerImage.fill(top: view.topAnchor,
                         leading: view.leadingAnchor,
                         trailing: view.trailingAnchor,
                         bottom: nil)
        
        tableTransactions.fill(top: nil,
                       leading: view.leadingAnchor,
                       trailing: view.trailingAnchor,
                       bottom: view.bottomAnchor)
        
        labeltitleHeader.translatesAutoresizingMaskIntoConstraints = false
        stackHitoryTransactions.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([ labeltitleHeader.centerXAnchor.constraint(equalTo: headerImage.centerXAnchor),
                                      labeltitleHeader.centerYAnchor.constraint(equalTo: headerImage.centerYAnchor),
                                      viewTransactions.topAnchor.constraint(equalTo: labeltitleHeader.bottomAnchor, constant: 60),
                                      viewTransactions.centerXAnchor.constraint(equalTo: headerImage.centerXAnchor),
                                      stackHitoryTransactions.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
                                      stackHitoryTransactions.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
                                      stackHitoryTransactions.topAnchor.constraint(equalTo: viewTransactions.bottomAnchor, constant: 60),
                                      tableTransactions.topAnchor.constraint(equalTo: stackHitoryTransactions.bottomAnchor),

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
