//
//  HomeViewController.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 18/09/23.
//

import UIKit
import CoreData



class HomeViewController: UIViewController{
    let headerImage: UIImageView = .headerImageView()
    let viewTransactions: UIView = CardInformation()
    let labelHistory: UILabel = .textBolLabel(16, description: "Histórico de transação")
    let labelHistoryAll: UILabel = .textLabel(12, description: "Mostrar todos")
    let labeltitleHeader: UILabel = .textBolLabel(22,textColor: .white, description: "Home")
    let tableTransactions = UITableView()
    let viewSeparator = UIView()
    let cellId = "cellId"
    
    var characters = ["profile-icon", "home-icon"]
    
    let viewModel = ExpensesViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableTransactions.register(TransactionCell.self, forCellReuseIdentifier: cellId)
        tableTransactions.dataSource = self
        setupView()
    }
    
    func setupView() {
        
        
        let stackHitoryTransactions = UIStackView(arrangedSubviews: [labelHistory, viewSeparator, labelHistoryAll])
        stackHitoryTransactions.axis = .horizontal
        stackHitoryTransactions.spacing = 30
        
        view.addSubview(headerImage)
        view.addSubview(labeltitleHeader)
        view.addSubview(viewTransactions)
        view.addSubview(stackHitoryTransactions)
        view.addSubview(tableTransactions)
        configureHeader()
        
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
}


extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return   viewModel.fetchExpenses().count
        return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TransactionCell
        cell.selectionStyle = .none
        cell.backgroundColor = .clear

        let expenses = viewModel.fetchExpenses()
        let expense = expenses[indexPath.row]

        // Configure a célula com os dados do Core Data
        cell.render(nameImage: "home-icon",
                    infoTitle: expense.name ?? "",
                    infoDate: expense.date ?? "",
                    infoBalace: "R$ ")

        return cell
    }
}
