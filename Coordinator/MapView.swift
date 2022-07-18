//
//  MapView.swift
//  Coordinator
//
//  Created by Mohammad reza on 18.07.2022.
//

import SwiftUI

struct MapView: View {
    
    @EnvironmentObject var coordinator: Coordinator<MapRouter>

    var body: some View {
        NavigationView {
            Button("Go to the city") {
                coordinator.show(.city(named: "El Paso"))
            }
        }
    }
}
