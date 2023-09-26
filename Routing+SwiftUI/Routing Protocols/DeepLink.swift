//
//  DeepLink.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import Foundation
import Foundation

/// A struct representing a deep link within an app's navigation system.
public struct DeepLink {
    /// The action associated with the deep link.
    public let action: String
    /// The route or destination associated with the deep link.
    public let route: NavigationRoute
    /// A set of parameters associated with the deep link.
    public let params: Set<String>
    
    public init(action: String, route: NavigationRoute, params: Set<String> = []) {
        self.action = action
        self.route = route
        self.params = params
    }
}

extension DeepLink: Hashable {
    public static func == (lhs: DeepLink, rhs: DeepLink) -> Bool {
        lhs.action == rhs.action
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(action)
    }
}
