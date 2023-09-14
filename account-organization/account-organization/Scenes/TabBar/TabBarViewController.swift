//
//  TabBarViewController.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit


class BaseTabBarViewController: UITabBarController {
    
    private let floatingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 80, height: 80)
        button.center = CGPoint(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height - 80)
        button.backgroundColor = UIColor(red: 14/255, green: 41/255, blue: 84/255, alpha: 1)
        button.layer.cornerRadius = 40
        button.setTitle("+", for: .normal)
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.configureWithDefaultBackground()
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
            
            view.addSubview(floatingButton)
            floatingButton.addTarget(self, action: #selector(floatingButtonTapped), for: .touchUpInside)

        }
        
        
        let homeViewController = createItem(viewController: ViewController(), title: "", image: "home-icon")
        let statisticsViewController = createItem(viewController: ViewController(), title: "", image: "statistics-icon")
        let addViewController = createItem(viewController: ViewController(), title: "", image: "")
        let walletViewController = createItem(viewController: UIViewController(), title: "", image: "wallet-icon")
        let profileViewController = createItem(viewController: ProfileViewController(), title: "", image: "profile-icon")
        
        viewControllers =  [homeViewController, statisticsViewController, addViewController, walletViewController,profileViewController]
//        selectedIndex = 2
    }
    
    func createItem(viewController: UIViewController, title: String, image: String) -> UIViewController {
        let navViewController = UINavigationController(rootViewController: viewController)
        
        navViewController.navigationBar.prefersLargeTitles = true
        
        viewController.navigationItem.title = title
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: image)
        viewController.view.backgroundColor = .white
        return navViewController
    }
    
    @objc private func floatingButtonTapped() {
        // Implemente a ação desejada quando o botão flutuante for tocado
        
        print("aqui")
    }
}
