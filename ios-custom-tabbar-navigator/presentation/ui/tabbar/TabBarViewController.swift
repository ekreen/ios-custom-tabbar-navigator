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
    @IBOutlet weak var homeView: UIView!
    
    var navigator: TabBarNavigator!
    
    var viewControllers: [UIViewController] = []
    private var selectedIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewControllers = navigator.allViewControllers()
        tabButtonPushed(buttons[selectedIndex])
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        homeView.clipsToBounds = true
        homeView.layer.cornerRadius = homeView.frame.height / 2
        
    }
    
    @IBAction func tabButtonPushed(_ sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        let previousVC = viewControllers[previousIndex]
        previousVC.remove()
        print("button : \(sender.tag)")
        let vc = viewControllers[selectedIndex]
        add(vc, in: contentView)
        buttons[previousIndex].isSelected = false
        buttons[selectedIndex].isSelected = true
    }
    
}

