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
    
    var path: NavigationPath { get }
    var startRoute: Route { get }
    
    func start() throws
    func show(route: Route) throws
    func set(routes: [Route], animated: Bool)
    func append(routes: [Route], animated: Bool)
    func pop(animated: Bool)
    func popToRoot(animated: Bool)
    func dismiss(animated: Bool)
}


// MARK: - Extensions

public extension Navigator where Self: Coordinator, Self: RouterViewFactory {
      

    func start() throws{ }
    func show(route: Route) throws { }
    func set(routes: [Route], animated: Bool){ }
    func append(routes: [Route], animated: Bool){ }
    func pop(animated: Bool){ }
    func popToRoot(animated: Bool){ }
    func dismiss(animated: Bool){ }
}
