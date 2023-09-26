//
//  HomeRoute.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import Foundation


enum HomeRoute: NavigationRoute {
    case view1
    case view2
    case view3
    
    var title: String? {
        switch self {
        case .view1:
            return "This is View 1"
        case .view2:
            return "This is View 2"
        case .view3:
            return "This is View 3"
        }
    }
    
    var action: TransitionAction? {
        return .push(animated: true)
    }
}


