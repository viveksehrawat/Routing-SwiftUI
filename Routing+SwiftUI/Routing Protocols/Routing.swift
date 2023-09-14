//
//  Routing.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI


protocol Routing {
    associatedtype Route: RouteType
    associatedtype Body: View
    @ViewBuilder func view(for route: Route) -> Self.Body
}
