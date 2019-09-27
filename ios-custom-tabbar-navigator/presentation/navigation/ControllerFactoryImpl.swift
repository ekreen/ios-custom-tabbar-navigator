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
    
    func makeSushiViewController() -> UIViewController {
        let controller = UIStoryboard.init(name: "Sushi", bundle: nil).instantiateViewController(withIdentifier: "SushiViewController") as! SushiViewController
        
        let rooter = UINavigationController()
        controller.navigator = SushiNavigator(controllerFactory: self, rooter: rooter)
        rooter.setViewControllers([controller, UIViewController()], animated: false)
        return rooter
    }
    
    func makeMasterViewController() -> UIViewController {
        let controller = MasterViewController(nibName: nil, bundle: nil)
        return controller
    }
    
    func makeDetailViewController() -> UIViewController {
        let controller = DetailViewController(nibName: nil, bundle: nil)
        return controller
    }
    
    func makeNavigationViewController(with viewControllers: [UIViewController]) -> UIViewController {
        let navigationController = UINavigationController()
        navigationController.viewControllers = viewControllers
        return navigationController
    }
}
