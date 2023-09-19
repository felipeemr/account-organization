//
//  ViewController.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 17/07/23.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var tableTransaction: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        configureViews()
    }

//    func configureViews() {
//        tableTransaction.dataSource = self
//        tableTransaction.delegate = self
//        tableTransaction.register(type: InfoCell.self)
//
//    }
}

//extension ViewController: UITableViewDataSource, UITableViewDelegate {
////    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        return 10
////    }
////
////    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//////        let cell: InfoCell = tableView.dequeueReusableCell(indexPath)
//////                let item = ccbsState[indexPath.row]
//////                cell.render(ccb: item.ccb,
//////                            isLoading: item.isLoading,
//////                            completion: { [weak self] in
//////                    self?.delegate?.pushWebView(url: item.ccb.ccb)
//////                })
//////        return cell
////    }
//    
//}
