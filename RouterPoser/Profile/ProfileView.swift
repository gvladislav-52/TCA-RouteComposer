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
    var store: StoreOf<ProfileFeature>
    
    func isTarget(for context: Any?) -> Bool {
        return true
    }
    typealias Context = Any?
    
    var body: some View {
        WithViewStore(store, observe: { $0 }) { viewStore in
            VStack(spacing: 20) {
                Text("Profile screen")
                    .font(.title)
                
                TextField(
                    "Username",
                    text: viewStore.binding(
                        get: \.username,
                        send: ProfileFeature.Action.userNameChanged
                    )
                )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                
                Text("Current username: \(viewStore.username)")
                    .foregroundColor(.gray)
                
                TextField(
                    "Status",
                    text: viewStore.binding(
                        get: \.status,
                        send: ProfileFeature.Action.statusChanged
                    )
                )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("Profile")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.yellow)
        }
    }
}

