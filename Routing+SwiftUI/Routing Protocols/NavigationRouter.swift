//
//  File.swift
//  Routing+SwiftUI
//
//  Created by Vivek Sehrawat on 26/09/23.
//

import SwiftUI

public protocol NavigationRoute {
    var title: String? { get }
    var action: TransitionAction? { get }
}

public enum TransitionAction {
    case push(animated: Bool)
    case present(
        animated: Bool,
        modalPresentationStyle: UIModalPresentationStyle = .automatic,
        completion: (() -> Void)? = nil
    )
}
