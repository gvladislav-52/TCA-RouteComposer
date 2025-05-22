//
//  HomeFactory.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//


import SwiftUI
import RouteComposer
import ComposableArchitecture

struct HomeFactory: Factory {
    typealias ContentView = HomeView
    typealias Feature = HomeFeature
    typealias ViewController = UIHostingController<ContentView>
    typealias Context = Any?

    func build(with context: Context = nil) throws -> ViewController {
        UIHostingController(rootView: build(with: context))
    }

    func build(with context: Context = nil) -> ContentView {
        let state = Feature.State()
        let feature = Feature()
        let store = Store(initialState: state) {
            feature
        }
        return ContentView(store: store)
    }
}
