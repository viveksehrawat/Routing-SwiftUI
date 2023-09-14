//
//  ForgotPassView.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI


struct ContentView: View {
    var appRouter = AppRouter(environment: Environment(userRepo: UserRepository()), authRouter: AuthRouter(environment: AuthEnvironment(userRepo: UserRepository())))
    
    var body: some View {
        appRouter.view(for: .viewA)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Environment {
    var userRepo: UserRepository
}

struct AuthEnvironment {
    var userRepo: UserRepository
}

class AppViewModel: ObservableObject, ViewModel {
    typealias Route = AppRoute
    @Published var navigationRoute: AppRoute?
}

class AuthViewModel: ObservableObject, ViewModel {
    typealias Route = AuthRoute
    @Published var navigationRoute: AuthRoute?
}

struct UserRepository {
    func createUser() {
    }
}
