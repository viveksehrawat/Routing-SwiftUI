//
//  LoginView.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import Foundation
import SwiftUI

struct LoginView<Router: Routing>: AppView where Router.Route == AuthRoute {
    let router: Router
    let viewModel: AuthViewModel
    
    var body: some View {
        VStack {
            NavigationLink(destination: router.view(for: .signUp)) {
                Text("Go to Sign Up")
            }
            .padding()
            
            NavigationLink(destination: router.view(for: .forgotPassword)) {
                Text("Go to Forgot Password?")
            }
            .padding()
        }
        .padding()
        .navigationBarTitle("Sign In")
        .navigationBarTitleDisplayMode(.inline)

    }
}
