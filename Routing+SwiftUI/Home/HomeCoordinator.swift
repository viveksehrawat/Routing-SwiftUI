//
//  HomeCoordinator.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import SwiftUI

class HomeCoordinator: Routing {
    
    
    typealias Route = HomeRoute
    @Published var path = NavigationPath()
    
    // Root coordinator doesnot have a parent
    var parent: Coordinator?
    var childCoordinators: [Coordinator] = [Coordinator]()
    var startRoute: HomeRoute

    init(parent: Coordinator?, startRoute: HomeRoute = .view1) {
        self.parent = parent
        self.startRoute = startRoute
    }
}

// MARK: - RouterViewFactory

extension HomeCoordinator: RouterViewFactory {
    @ViewBuilder
    public func view(for route: HomeRoute) -> some View {
        switch route {
        case .view1:
            ViewA()
        case .view2:
            ViewB()
        case .view3:
            ViewC()
        }
    }
}
