//
//  AuthCoordinator.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//


import SwiftUI

class AuthCoordinator: Routing {
    
    func handle(_ action: CoordinatorAction) {
//        switch action {
//        case AuthAction.register:
//            try? show(route: .triangle)
//        case AuthAction.forgot:
//            try? show(route: .star)
//        }
    }
    
    typealias Route = AuthRoute
    @Published var path: NavigationPath
    
    func getRoutes() -> AuthRoute.Type {
        return AuthRoute.self
    }
    
    // Root coordinator doesnot have a parent
    var parent: Coordinator?
    var childCoordinators: [Coordinator] = [Coordinator]()
    let startRoute: AuthRoute
    
    init(parent: Coordinator?,path: NavigationPath, startRoute: AuthRoute = .login) {
        self.startRoute = startRoute
        self.parent = parent
        self.path = path
    }
    
}

// MARK: - RouterViewFactory

extension AuthCoordinator: RouterViewFactory {
    @ViewBuilder
    public func view(for route: AuthRoute) -> some View {
        switch route {
        case .login:
            LoginView<AuthCoordinator>()
        case .register:
            RegisterView<AuthCoordinator>()
        case .forgotPassword:
            ForgotPasswordView()
        }
    }
}
