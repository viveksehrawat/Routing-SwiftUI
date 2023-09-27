//
//  MainCoordinator.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import SwiftUI
import Combine

class MainCoordinator: Routing {
    typealias Route = MainRoute

    @Published var path: NavigationPath
    
    init(path: NavigationPath) {
        self.path = path
    }
    
    // Root coordinator doesnot have a parent
    var parent: Coordinator? = nil
    var childCoordinators: [Coordinator] = [Coordinator]()
    let startRoute: MainRoute = MainRoute.splash
        
    func build() -> some View {
        let splashView = SplashView<MainCoordinator>()
        return splashView
    }
    
    func getRoutes() -> MainRoute.Type {
        return MainRoute.self        
    }

    func handle(_ action: CoordinatorAction) {
        switch action {
        case MainAction.auth:
            let coordinator = makeAuthCoordinator()
            try? coordinator.start()
        case MainAction.home:
            let coordinator = makeAuthCoordinator()
            try? coordinator.start()
        default:
            break
        }
    }
    
    private func makeAuthCoordinator() -> AuthCoordinator {
        let coordinator = AuthCoordinator(parent: self, path: path)
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
    public func view(for route: MainRoute) -> some View {
        switch route {
        case .splash:
            SplashView<MainCoordinator>()
        }
    }
}
