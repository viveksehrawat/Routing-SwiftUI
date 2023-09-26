//
//  RouterViewFactory.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import SwiftUI

@MainActor
public protocol RouterViewFactory {
    associatedtype V: View
    associatedtype Route: NavigationRoute
    
    @ViewBuilder
    func view(for route: Route) -> V
}
