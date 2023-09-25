//
//  TabBarViewController.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 14/09/23.
//

import UIKit


class BaseTabBarViewController: UITabBarController {
    
    private let floatingButton: UIButton = .floatButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if #available(iOS 13.0, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.backgroundColor = .white
            if #available(iOS 15.0, *) {
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
            
            view.addSubview(floatingButton)
            floatingButton.addTarget(self, action: #selector(floatingButtonTapped), for: .touchUpInside)

        }
        
        UITabBar.appearance().tintColor = UIColor(red: 14/255, green: 41/255, blue: 84/255, alpha: 1)
        
        let homeViewController = createItem(viewController: HomeViewController(), image: "home-icon")
        let statisticsViewController = createItem(viewController: ViewController(), image: "statistics-icon")
        let addViewController = createItem(viewController: ViewController(), image: "")
        let walletViewController = createItem(viewController: StatisticsViewController(), image: "wallet-icon")
        let profileViewController = createItem(viewController: ProfileViewController(), image: "profile-icon")
        
        viewControllers =  [homeViewController, statisticsViewController, addViewController, walletViewController,profileViewController]
    }
    
    func createItem(viewController: UIViewController, image: String) -> UIViewController {
        let navViewController = UINavigationController(rootViewController: viewController)
        
        navViewController.navigationBar.prefersLargeTitles = true
        viewController.tabBarItem.image = UIImage(named: image)
        viewController.view.backgroundColor = .white
        return navViewController
    }
    
    @objc private func floatingButtonTapped() {
        let newPantryViewController = NewPantryViewController()
        newPantryViewController.modalPresentationStyle = .popover
        newPantryViewController.modalPresentationCapturesStatusBarAppearance = false
        
        
        if let safeNavigation = selectedViewController as? UINavigationController {
            safeNavigation.modalPresentationStyle = .popover
            safeNavigation.pushViewController(newPantryViewController, animated: true)
        }
    }
}
