//
//  View2.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

struct ViewB<Router: Routing>: AppView where Router.Route == AppRoute {
    @State var activeNavigation: AppRoute?
    let router: Router
    let viewModel: AppViewModel
    
    var body: some View {
        VStack {
            Button("Go to Page 3") {
                self.activeNavigation = .viewC
            }
            
            NavigationLink(
                destination: router.view(for: .viewC),
                tag: .viewC,
                selection: $activeNavigation,
                label: { EmptyView() }
            )
        }
        .navigationBarTitle("Page 2")
        .navigationBarTitleDisplayMode(.inline)

    }
}
