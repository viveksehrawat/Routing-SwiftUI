//
//  AuthRouter.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

struct AuthRouter: Routing {
    let environment: AuthEnvironment
    func view(for route: AuthRoute) -> some View {
        switch route {
        case .signIn:
            LoginView(router: self, viewModel: AuthViewModel())
        case .signUp:
            RegisterView(router: self, viewModel: AuthViewModel())
        case .forgotPassword:
            ForgotPasswordView(router: self, viewModel: AuthViewModel())
        }
    }
}
