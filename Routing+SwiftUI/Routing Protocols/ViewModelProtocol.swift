//
//  ViewModelProtocol.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 14/09/23.
//

import SwiftUI

protocol ViewModel: ObservableObject {
    associatedtype Route: RouteType
    var navigationRoute: Route? { get set }
}
