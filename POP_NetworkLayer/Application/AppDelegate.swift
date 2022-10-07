//
//  AppDelegate.swift
//  POP_NetworkLayer
//
//  Created by Sadat on 10/6/22.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let networkManager = NetworkManager()
        let appStartVC = MainViewController(networkManager: networkManager)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = appStartVC
        self.window?.makeKeyAndVisible()
        return true
    }
}

