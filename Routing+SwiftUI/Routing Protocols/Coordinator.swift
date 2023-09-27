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
        
    /// A property that stores a reference to the parent coordinator, if any.
    var parent: Coordinator? { get }
    /// An array that stores references to any child coordinators.
    var childCoordinators: [Coordinator] { get set }
    /// Takes action parameter and handles the `CoordinatorAction`.
    func handle(_ action: CoordinatorAction)
    /// Adds child coordinator to the list.
    func add(child: Coordinator)
    /// Removes the coordinator from the list of children.
    func remove(coordinator: Coordinator)
    /// Takes deep link and its parameters and handles it.
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
    
}

/// A protocol that defines coordinator actions.
public protocol CoordinatorAction {}

public enum Action: CoordinatorAction {
    case done(Any)
    case cancel(Any)
}
