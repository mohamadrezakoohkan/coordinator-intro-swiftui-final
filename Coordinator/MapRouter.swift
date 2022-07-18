//
//  AppRouter.swift
//  Coordinator
//
//  Created by Mohammad reza on 18.07.2022.
//

import SwiftUI

public enum MapRouter: NavigationRouter {
    
    case map
    case city(named: String)
    
    public var transition: NavigationTranisitionStyle {
        switch self {
        case .map:
            return .push
        case .city:
            return .push
        }
    }
    
    @ViewBuilder
    public func view(coordinator: Coordinator<MapRouter>) -> some View {
        switch self {
        case .map:
            MapView()
                .environmentObject(coordinator)
        case .city(named: let name):
            CityView(name: name)
                .environmentObject(coordinator)
        }
    }
}
