//
//  Navigator.swift
//  ios-custom-tabbar-navigator
//
//  Created by Kévin Esprit on 14/06/2019.
//  Copyright © 2019 Kespri. All rights reserved.
//

protocol Navigator {
    associatedtype Destination
    
    func navigate(to destination: Destination)
}
