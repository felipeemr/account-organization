//
//  StatisticsViewController.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 24/09/23.
//

import UIKit


class StatisticsViewController: UIViewController {
    
    let headerImage: UIImageView = .headerImageView()
    let labeltitleHeader: UILabel = .textBolLabel(25, textColor: .white, description: "estatísticas")
    let labelDescription: UILabel = .textBolLabel(18, description: "Principais Gastos")
    let viewChart: UIView = UIView()
    let cellId = "cellId"
    let tableTransactions: UITableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableTransactions.register(TransactionCell.self, forCellReuseIdentifier: cellId )
        tableTransactions.dataSource = self
        configureView()
        
        
    }
    
    
    
    func configureView() {
//        view.
        
        view.addSubview(headerImage)
        view.addSubview(labeltitleHeader)
        view.addSubview(viewChart)
        view.addSubview(labelDescription)
        view.addSubview(tableTransactions)
        
        headerImage.fill(top: view.topAnchor,
                         leading: view.leadingAnchor,
                         trailing: view.trailingAnchor,
                         bottom: nil)
        
        labeltitleHeader.textAlignment = .center
        labeltitleHeader.fill(top: headerImage.topAnchor,
                              leading: headerImage.leadingAnchor,
                              trailing: headerImage.trailingAnchor,
                              bottom: nil,
                              padding: .init(top: 155, left: 0, bottom: 0, right: 0))
        
        viewChart.backgroundColor = .blue
        viewChart.layer.cornerRadius = 10
        viewChart.fill(top: headerImage.bottomAnchor,
                       leading: view.leadingAnchor,
                       trailing: view.trailingAnchor,
                       bottom: nil,
                       padding: .init(top: 20, left: 20, bottom: 0, right: 20))
        viewChart.heightAnchor.constraint(equalToConstant: 170).isActive = true
        
        labelDescription.fill(top: viewChart.bottomAnchor,
                              leading: view.leadingAnchor,
                              trailing: view.trailingAnchor, bottom: nil, padding: .init(top: 20, left: 20, bottom: 0, right: 20))
        
        
        tableTransactions.fill(top: labelDescription.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, bottom: view.bottomAnchor, padding: .init(top: 20, left: 20, bottom: 20, right: 20))

    }
    
}

extension StatisticsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! TransactionCell
            cell.selectionStyle = .none
            cell.backgroundColor = .clear
            cell.render(nameImage: "home-icon", infoTitle: "comida japonesa", infoDate: "26/08/2023", infoBalace: "R$ 10,00")
            return cell
    }
    
    
}
