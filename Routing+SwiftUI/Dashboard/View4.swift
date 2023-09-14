//
//  View4.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

struct ViewD<Router: Routing>: AppView where Router.Route == AppRoute {
    
    @State var activeNavigation: AppRoute?
    let router: Router
    let viewModel: AppViewModel
    
    var body: some View {
            VStack {
                Button("This is Page 4") {
                }
        }
    }
}
