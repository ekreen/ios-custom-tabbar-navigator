//
//  TabBarNavigator.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kévin Esprit on 14/06/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//
import UIKit

class TabBarNavigator: Navigator {
    
    private var controllerFactory: ControllerFactory
    private var viewControllers: [UIViewController]

    enum Destination {
        case tabBar
    }
    
    init(controllerFactory: ControllerFactory) {
        self.controllerFactory = controllerFactory
        self.viewControllers = []
    }
    
    func navigate(to destination: TabBarNavigator.Destination) {
        fatalError()
    }
}


