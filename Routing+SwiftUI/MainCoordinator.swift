//
//  MainCoordinator.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import SwiftUI
import Combine

class MainCoordinator: Routing {
   
    typealias Route = AuthRoute

    @Published var path = NavigationPath()

    // Root coordinator doesnot have a parent
    var parent: Coordinator? = nil
    var childCoordinators: [Coordinator] = [Coordinator]()
    let startRoute: AuthRoute

    init(startRoute: AuthRoute) {
        self.startRoute = startRoute
    }
    
    func handle(_ action: CoordinatorAction) {
        switch action {
        case MainAction.auth:
            let coordinator = makeAuthCoordinator()
            try? coordinator.start()
        case MainAction.home:
            let coordinator = makeAuthCoordinator()
            try? coordinator.start()
//        case let ShapesAction.featuredShape(route):
//            switch route {
//            case let shapeRoute as SimpleShapesRoute where shapeRoute != .simpleShapes:
//                let coordinator = makeSimpleShapesCoordinator()
//                coordinator.append(routes: [.simpleShapes, shapeRoute])
//            case let shapeRoute as CustomShapesRoute where shapeRoute != .customShapes:
//                let coordinator = makeCustomShapesCoordinator()
//                coordinator.append(routes: [.customShapes, shapeRoute])
//            default:
//                return
//            }
        default:
            break
        }
    }
    
    private func makeAuthCoordinator() -> AuthCoordinator {
        let coordinator = AuthCoordinator(parent: self)
        add(child: coordinator)
        return coordinator
    }

    private func makeHomeCoordinator() -> HomeCoordinator {
        let coordinator = HomeCoordinator(parent: self)
        add(child: coordinator)
        return coordinator
    }
}

// MARK: - RouterViewFactory
extension MainCoordinator: RouterViewFactory {
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
