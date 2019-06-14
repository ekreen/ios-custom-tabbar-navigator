//
//  RootNavigator.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kévin Esprit on 14/06/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class RootNavigator: Navigator {
    
    private var controllerFactory: ControllerFactory
    private var window: UIWindow
    
    enum Destination {
        case tabBar
    }
    
    init(window: UIWindow, controllerFactory: ControllerFactory) {
        self.window = window
        self.controllerFactory = controllerFactory
    }
    
    func navigate(to destination: RootNavigator.Destination) {
        let controller = makeController(for: destination)
        switch destination {
        case .tabBar:
            window.rootViewController = controller
        }
    }
}


private extension RootNavigator {
    
    func makeController(for destination: RootNavigator.Destination) -> UIViewController {
        switch destination {
        case .tabBar:
            return controllerFactory.makeTabBarViewController()
        }
    }
}
