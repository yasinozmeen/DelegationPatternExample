//
//  SceneDelegate.swift
//  DelegationPatternExample
//
//  Created by Kadir Yasin Özmen on 1.06.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else {return}
        
        let window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController(rootViewController: FirstViewController())
        window.rootViewController = navigationController
        self.window = window
        self.window?.makeKeyAndVisible()
    }


}

