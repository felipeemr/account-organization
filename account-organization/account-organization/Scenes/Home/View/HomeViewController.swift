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
        
       
        
        headerImage.fillConstraints(top: view.topAnchor,
                         leading: view.leadingAnchor,
                         trailing: view.trailingAnchor,
                         bottom: nil)
    
        
        labeltitleHeader.textAlignment = .center
        labeltitleHeader.fillConstraints(top: headerImage.topAnchor,
                              leading: headerImage.leadingAnchor,
                              trailing: headerImage.trailingAnchor,
                              bottom: nil,
                              padding: .init(top: 155, left: 0, bottom: 0, right: 0))
        
        
        viewTransactions.size(size: .init(width: 374,
                                          height: 200))
        viewTransactions.fillConstraints(top: labeltitleHeader.bottomAnchor,
                              leading: view.leadingAnchor,
                              trailing: view.trailingAnchor,
                              bottom: nil,
                              padding: .init(top: 60, left: 20, bottom: 0, right: 20))
        
        stackHitoryTransactions.fillConstraints(top: viewTransactions.bottomAnchor,
                                     leading: view.leadingAnchor,
                                     trailing: view.trailingAnchor,
                                     bottom: nil, padding: .init(top: 40, left: 25, bottom: 0, right: 25))
        
        tableTransactions.backgroundColor = .white
        tableTransactions.fillConstraints(top: stackHitoryTransactions.bottomAnchor,
                       leading: view.leadingAnchor,
                       trailing: view.trailingAnchor,
                       bottom: view.bottomAnchor)
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return   0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TransactionCell
        cell.selectionStyle = .none
        cell.backgroundColor = .clear
        cell.render(nameImage: "home-icon", infoTitle: "comida japonesa", infoDate: "26/08/2023", infoBalace: "R$ 10,00")
        return cell
    }
}
