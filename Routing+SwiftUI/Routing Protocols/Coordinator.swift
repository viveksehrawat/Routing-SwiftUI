//
//  Coordinator.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import Foundation

public typealias Routing = Coordinator & Navigator

@MainActor
public protocol Coordinator: AnyObject {
    var parent: Coordinator? { get }
    var childCoordinators: [Coordinator] { get set }
     
    func add(child: Coordinator)
    func remove(coordinator: Coordinator)
    func handle(_ deepLink: DeepLink, with params: [String: String])
}

// MARK: - Extensions

public extension Coordinator {
    
    // MARK: - Public methods

    func add(child: Coordinator) {
        childCoordinators.append(child)
    }
    
    func remove(coordinator: Coordinator) {
        childCoordinators.removeAll(where: { $0 === coordinator })
    }
    
    func handle(_ deepLink: DeepLink, with params: [String: String] = [:]) {
        assertionFailure("Deep link handler is not implemented.")
    }
}

/// A protocol that defines coordinator actions.
public protocol CoordinatorAction {}

public enum Action: CoordinatorAction {
    case done(Any)
    case cancel(Any)
}
