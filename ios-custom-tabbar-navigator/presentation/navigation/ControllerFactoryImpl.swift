//
//  ControllerFactoryImpl.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kévin Esprit on 14/06/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class ControllerFactoryImpl: ControllerFactory {
    func makeTabBarViewController() -> UIViewController {
        let controller = UIStoryboard.init(name: "TabBar", bundle: nil).instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        controller.navigator = TabBarNavigator(controllerFactory: self)
        return controller
    }
}
