//
//  CityView.swift
//  Coordinator
//
//  Created by Mohammad reza on 18.07.2022.
//

import SwiftUI

struct CityView: View {
    
    @EnvironmentObject var coordinator: Coordinator<MapRouter>
    
    let name: String
    
    var body: some View {
        VStack {
            Text(name)
            Button("Back") {
                coordinator.pop()
            }
            Button("Move to Map") {
                coordinator.popToRoot()
            }
            Button("Next City") {
                coordinator.show(.city(named: name + " " + name))
            }
        }.navigationBarHidden(true)
    }
}

