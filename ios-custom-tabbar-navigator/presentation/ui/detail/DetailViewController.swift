//
//  DetailViewController.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kevin ESPRIT on 27/09/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    private var notificationCenter: NotificationCenter = .default

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        notificationCenter.post(name: .isTabbarHidden, object: true)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        notificationCenter.post(name: .isTabbarHidden, object: false)
    }
}
