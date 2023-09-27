//
//  Routing_SwiftUIApp.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

@main
struct Routing_SwiftUIApp: App {
    @AppStorage("authToken") var authToken: String?
    @StateObject private var mainCoordinator = MainCoordinator(path: NavigationPath())
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $mainCoordinator.path) {
                mainCoordinator.view(for: MainRoute.splash)
                    .navigationDestination(for: mainCoordinator.getRoutes()) { page in
                        mainCoordinator.view(for: MainRoute.splash)
                    }
                    
            }
            .environmentObject(mainCoordinator)

        }
    }
}
