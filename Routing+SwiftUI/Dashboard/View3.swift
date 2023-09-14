//
//  View3.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

struct ViewC<Router: Routing>: AppView where Router.Route == AppRoute {
    @State var activeNavigation: AppRoute?
    let router: Router
    let viewModel: AppViewModel
    
    var body: some View {
        VStack {
            Button("Go to Page 4") {
                self.activeNavigation = .viewD
            }
            
            NavigationLink(
                destination: router.view(for: .viewD),
                tag: .viewD,
                selection: $activeNavigation,
                label: { EmptyView() }
            )
        }
        .navigationBarTitle("Page 3")

    }
}
