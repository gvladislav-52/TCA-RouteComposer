//
//  ProfileStore.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import Foundation
import ComposableArchitecture

@Reducer
struct ProfileFeature {
    
    @ObservableState
    struct State: Equatable {
        var username: String = "User"
        var status: String = "Online"
    }
    
    enum Action {
        case userNameChanged(String)
        case statusChanged(String)
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case let .userNameChanged(newName):
                state.username = newName
                return .none
                
            case let .statusChanged(newStatus):
                state.status = newStatus
                return .none
            }
        }
    }
}
