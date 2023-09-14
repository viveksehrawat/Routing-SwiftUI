//
//  AppView.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

protocol AppView: View {
    associatedtype VM: ViewModel where VM.Route: RouteType
    associatedtype Router: Routing where Router.Route == VM.Route
    
    var viewModel: VM { get }
    var router: Router { get }
}
