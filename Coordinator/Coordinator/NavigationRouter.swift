//
//  NavigationRouter.swift
//  Coordinator
//
//  Created by Mohammad reza on 18.07.2022.
//

import SwiftUI

public protocol NavigationRouter {
    
    associatedtype V: View

    var transition: NavigationTranisitionStyle { get }
    
    /// Creates and returns a view of assosiated type
    ///
    @ViewBuilder
    func view() -> V
}
