//
//  NotificationName+extension.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kevin ESPRIT on 27/09/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

import Foundation

extension Notification.Name {
    static var isTabbarHidden: Notification.Name {
        return .init("Tabbar.Hidden")
    }
}
