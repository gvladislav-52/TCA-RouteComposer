//
//  AuthStore.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import Foundation
import ComposableArchitecture

@Reducer
struct AuthFeature {
    
    @ObservableState
    struct State: Equatable {
    }
    
    enum Action {
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            return .none
        }
    }
}

