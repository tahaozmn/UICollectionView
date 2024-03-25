//
//  AppDelegate.swift
//  UICollectionView
//
//  Created by Taha Özmen on 1.03.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        let navigationController = UINavigationController(rootViewController: ViewController())
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
        
        return true
    }
}

