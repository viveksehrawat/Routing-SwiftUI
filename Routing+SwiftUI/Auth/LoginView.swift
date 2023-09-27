//
//  LoginView.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import Foundation
import SwiftUI

struct LoginView<Coordinator: Routing> :View  {
    @EnvironmentObject var coordinator: Coordinator
    
    var body: some View {
        Button("Go to Sign Up"){
            coordinator.handle(AuthAction.register)
        }
    }
}
