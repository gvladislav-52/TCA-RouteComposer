//
//  ContentView.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    var body: some View {
        AuthView(store:
            Store(
                initialState: AuthFeature.State(),
                reducer: {
                    AuthFeature()
                }
            )
        )
    }
}

#Preview {
    ContentView()
}
