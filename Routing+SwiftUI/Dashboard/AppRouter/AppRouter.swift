//
//  AppRouter.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

struct AppRouter: Routing {
    let environment: Environment
    let authRouter: AuthRouter
    
    func view(for route: AppRoute) -> some View {
        switch route {
        case .viewA:
            ViewA(router: self, viewModel: AppViewModel(), authRouter: authRouter)
        case .viewB:
            ViewB(router: self, viewModel: AppViewModel())
        case .viewC:
            ViewC(router: self, viewModel: AppViewModel())
        case .viewD:
            ViewD(router: self, viewModel: AppViewModel())
        }
    }
}
