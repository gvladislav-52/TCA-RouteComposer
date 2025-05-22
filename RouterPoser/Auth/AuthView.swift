//
//  AuthView.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import SwiftUI
import RouteComposer
import ComposableArchitecture

struct AuthView: View, ContextChecking {
    let store: StoreOf<AuthFeature>
    
    func isTarget(for context: Any?) -> Bool {
        return true
    }
    typealias Context = Any?

    var body: some View {
            VStack(spacing: 16) {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world Login!")
    
                Button("Go to Home Screen") {
                    try? DefaultRouter().navigate(to: HomeRouting.destitionFromLogin())
                }
            }
            .padding()
        }
}
//
//#Preview {
//    AuthView()
//}
