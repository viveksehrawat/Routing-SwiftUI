//
//  AuthRoute.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import Foundation

enum AuthRoute: NavigationRoute {
    
    case login
    case register
    case forgotPassword
    
    var title: String? {
        switch self {
        case .login:
            return "Welcome Sign In"
        case .register:
            return "Register"
        case .forgotPassword:
            return "Forgot Password"
        }
    }
    
    var action: TransitionAction? {
        return .push(animated: true)
    }

}

enum AuthAction: CoordinatorAction {
    case login
    case register
    case forgot
    
}
