//
//  AppDelegate.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kévin Esprit on 14/06/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var controllerFactory: ControllerFactory!
    var rootNavigator: RootNavigator!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        controllerFactory = ControllerFactoryImpl()
        rootNavigator = RootNavigator(window: window!, controllerFactory: controllerFactory)
        rootNavigator.navigate(to: .tabBar)
        window?.makeKeyAndVisible()
        return true
    }

}

