//
//  AuthCoordinator.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//


import SwiftUI

class AuthCoordinator: Routing {
    
    typealias Route = AuthRoute
    @Published var path = NavigationPath()
    
    // Root coordinator doesnot have a parent
    var parent: Coordinator?
    var childCoordinators: [Coordinator] = [Coordinator]()
    let startRoute: AuthRoute
    
    init(parent: Coordinator?,startRoute: AuthRoute = .login) {
        self.startRoute = startRoute
        self.parent = parent
    }
    
}

// MARK: - RouterViewFactory

extension AuthCoordinator: RouterViewFactory {
    @ViewBuilder
    public func view(for route: AuthRoute) -> some View {
        switch route {
        case .login:
            LoginView()
        case .register:
            RegisterView()
        case .forgotPassword:
            ForgotPasswordView()
        }
    }
}
