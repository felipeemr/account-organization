//
//  SceneDelegate.swift
//  account-organization
//
//  Created by Felipe Moraes Rocha on 17/07/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.backgroundColor = .darkGray
        window?.rootViewController = BaseTabBarViewController()
        window?.makeKeyAndVisible()
        
    }
}

