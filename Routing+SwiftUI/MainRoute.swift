//
//  MainRoute.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import Foundation

enum MainRoute: NavigationRoute {
    case auth
    case home
    
    var title: String? {
        return ""
    }
    
    var action: TransitionAction? {
        return .push(animated: true)
    }
}
