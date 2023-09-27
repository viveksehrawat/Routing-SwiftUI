//
//  File.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import SwiftUI

@MainActor
public protocol Navigator: ObservableObject {
    associatedtype Route: NavigationRoute
    
    var path: NavigationPath { get set }
    /// The starting route of the navigator.
    var startRoute: Route { get }
    func getRoutes() -> Route.Type
    
    /// This method should be called to start the flow  and to show the view for the `startRoute`.
    func start() throws
    /// It creates a view for the route and adds it to the navigation stack.
    func show(route: Route) throws
    /// Creates views for routes, and replaces the navigation stack with the specified views.
    func set(routes: [Route], animated: Bool)
    /// Creates views for routes, and appends them on the navigation stack.
    func append(routes: [Route], animated: Bool)
    /// Pops the top view from the navigation stack.
    func pop(animated: Bool)
    /// Pops all the views on the stack except the root view.
    func popToRoot(animated: Bool)
    /// Dismisses the view.
    func dismiss(animated: Bool)
}


// MARK: - Extensions

public extension Navigator where Self: Coordinator, Self: RouterViewFactory {

    // MARK: - Public methods

    func start() throws {
        try show(route: startRoute)
    }
    
    func show(route: Route) throws {
        path.append(route)
    }
    
    func set(routes: [Route], animated: Bool){ }
    func append(routes: [Route], animated: Bool){ }
    func pop(animated: Bool){ }
    func popToRoot(animated: Bool){ }
    func dismiss(animated: Bool){ }
}
