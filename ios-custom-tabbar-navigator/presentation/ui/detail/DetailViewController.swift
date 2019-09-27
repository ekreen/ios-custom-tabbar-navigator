//
//  DetailViewController.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kevin ESPRIT on 27/09/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    private var notificationCenter: NotificationCenter = .default
    private var webView: WKWebView?

    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView(frame: view.frame)
        webView?.load(URLRequest(url: URL(string: "https://dev.to/")!))
        view.addSubview(webView!)
        view.backgroundColor = .yellow
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        notificationCenter.post(name: .isTabbarHidden, object: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        notificationCenter.post(name: .isTabbarHidden, object: false)
    }
}
