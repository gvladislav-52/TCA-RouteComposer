//
//  ProfileView.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import SwiftUI
import RouteComposer
import ComposableArchitecture

struct ProfileView: View, ContextChecking {
    let store: StoreOf<ProfileFeature>
    
    func isTarget(for context: Any?) -> Bool {
        return true
    }
    typealias Context = Any?
    
    var body: some View {
        VStack {
            Text("Profile screen")
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.yellow)
    }
}
