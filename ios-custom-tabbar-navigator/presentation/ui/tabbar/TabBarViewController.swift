//
//  ViewController.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kévin Esprit on 14/06/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var navigator: TabBarNavigator!
    
    var viewControllers: [UIViewController] = []
    private var selectedIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewControllers = navigator.allViewControllers()
        tabButtonPushed(buttons[selectedIndex])
    }
    
    @IBAction func tabButtonPushed(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        let previousVC = viewControllers[previousIndex]
        previousVC.remove()
        
        let vc = viewControllers[selectedIndex]
        add(vc, in: contentView)
    }
    
}

