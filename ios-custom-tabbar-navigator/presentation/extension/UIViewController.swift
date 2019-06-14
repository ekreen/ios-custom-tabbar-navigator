//
//  UIViewController.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kévin Esprit on 14/06/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

extension UIViewController {
    func add(_ child: UIViewController, in contentView: UIView? = nil) {
        addChild(child)
        
        if let contentView = contentView {
            child.view.frame = contentView.bounds
            contentView.addSubview(child.view)
        } else {
            view.addSubview(child.view)
        }
        child.didMove(toParent: self)
    }
    
    func remove() {
        // Just to be safe, we check that this view controller
        // is actually added to a parent before removing it.
        guard parent != nil else {
            return
        }
        
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
