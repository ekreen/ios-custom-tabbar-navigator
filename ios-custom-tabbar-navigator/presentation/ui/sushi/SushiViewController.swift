//
//  SushiViewController.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kévin Esprit on 14/06/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class SushiViewController: UIViewController {
    
    var navigator: SushiNavigator!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        navigationController?.navigationBar.backgroundColor = .green
        navigationController?.navigationBar.isHidden = true
    }

}
