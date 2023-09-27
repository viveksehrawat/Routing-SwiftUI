//
//  File.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import SwiftUI

public protocol NavigationRoute: Hashable {
    var title: String? { get }
    
}

public enum TransitionAction {
    case push(animated: Bool)
}
