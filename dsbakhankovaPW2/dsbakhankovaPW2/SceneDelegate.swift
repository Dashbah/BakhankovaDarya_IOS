//
//  SceneDelegate.swift
//  dsbakhankovaPW2
//
//  Created by Dashbah on 08.10.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    private let commentLabel = UILabel()
    private let valueLabel = UILabel()
    
    private let value: Int = 0
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session:
               UISceneSession, options connectionOptions:
               UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene)
        else { return }
        let window = UIWindow(windowScene: windowScene)
        let navigationController =
        UINavigationController(rootViewController:
                                WelcomeViewController())
        window.rootViewController = navigationController
        self.window = window
        window.makeKeyAndVisible()
    }
}

