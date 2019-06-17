//
//  SushiNavigator.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kévin Esprit on 14/06/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class SushiNavigator: Navigator {
    
    private var controllerFactory: ControllerFactory
    private var rooter: UINavigationController
    
    enum Destination {
        case detail
    }
    
    init(controllerFactory: ControllerFactory, rooter: UINavigationController) {
        self.controllerFactory = controllerFactory
        self.rooter = rooter
    }
    
    func navigate(to destination: SushiNavigator.Destination) {
        fatalError()
    }
}
