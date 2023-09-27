//
//  ForgotPassView.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

struct SplashView<Coordinator: Routing>: View {
    
    @EnvironmentObject var coordinator: Coordinator

    var body: some View {
        Button("Go To Login"){
            coordinator.handle(MainAction.auth)
        }
        .padding(10)
        Text("Welcom to Splash Screen")
            .padding(10)
        Button("Go To Home page"){
            
        }
    }
}
