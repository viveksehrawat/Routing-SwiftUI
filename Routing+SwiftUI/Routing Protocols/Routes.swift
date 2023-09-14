//
//  Routes.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

typealias RouteType = Hashable & Identifiable & CaseIterable

enum AppRoute: RouteType {
    case viewA
    case viewB
    case viewC
    case viewD
    
    var id: Int {
        switch self {
        case .viewA:
            return 0
        case .viewB:
            return 1
        case .viewC:
            return 2
        case .viewD:
            return 3
        }
    }
}

enum AuthRoute: RouteType {
    case signIn
    case signUp
    case forgotPassword
    
    var id: Int {
        switch self {
        case .signIn:
            return 0
        case .signUp:
            return 1
        case .forgotPassword:
            return 2
        }
    }
}
