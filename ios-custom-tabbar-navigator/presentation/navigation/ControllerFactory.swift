//
//  ControllerFactory.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kévin Esprit on 14/06/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

protocol ControllerFactory {
    func makeTabBarViewController() -> UIViewController
    func makeSushiViewController() -> UIViewController
    func makeMasterViewController() -> UIViewController
    func makeDetailViewController(tabbarDelegate: TabbarDelegate) -> UIViewController
    func makeNavigationViewController(with viewControllers: [UIViewController]) -> UIViewController
}
