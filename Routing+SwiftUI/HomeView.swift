//
//  Home.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

struct ViewA<Router: Routing>: AppView where Router.Route == AppRoute {
    @State var activeNavigation: AppRoute?
    @State var activeAuthNavigation: AuthRoute?
    let router: Router
    let viewModel: AppViewModel
    let authRouter: AuthRouter
    
    var body: some View {
        NavigationView {
            
            VStack(spacing: 20) {
                Button("Go to Page 2") {
                    self.activeNavigation = .viewB
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                NavigationLink(
                    destination: router.view(for: .viewB),
                    tag: .viewB,
                    selection: $activeNavigation,
                    label: { EmptyView() }
                )
                
                Button("Go to SignUpView") {
                    self.activeAuthNavigation = .signIn
                }
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                NavigationLink(
                    destination: authRouter.view(for: activeAuthNavigation ?? .signIn),
                    tag: .signIn,
                    selection: $activeAuthNavigation,
                    label: { EmptyView() }
                )
            }
            .padding()
            .navigationBarTitle("Home Page")
            .navigationViewStyle(.stack)
        }
    }
}
