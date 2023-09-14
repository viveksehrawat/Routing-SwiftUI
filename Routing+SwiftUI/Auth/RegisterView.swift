//
//  RegisterView.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import Foundation
import SwiftUI

struct RegisterView<Router: Routing>: AppView where Router.Route == AuthRoute {
    let router: Router
    let viewModel: AuthViewModel
    
    var body: some View {
        
        VStack {}
        .padding()
        .navigationBarTitle("Sign Up")
        
    }
}
