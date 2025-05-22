//
//  HomeView.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import SwiftUI
import RouteComposer
import ComposableArchitecture

struct HomeView: View, ContextChecking {
    let store: StoreOf<HomeFeature>
    
    func isTarget(for context: Any?) -> Bool {
        return true
    }
    typealias Context = Any?
    
    var body: some View {
            VStack(spacing: 16) {
                Image(systemName: "xmark")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Home Screen!")
    
                Button("Go to Profile Screen") {
                    try? DefaultRouter().navigate(to: ProfileRouting.destinationFromHome())
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.red)
        }
}

//#Preview {
//    HomeView()
//}
