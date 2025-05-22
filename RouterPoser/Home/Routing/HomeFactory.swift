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
        let hostingController = UIHostingController(rootView: build(with: context))
        hostingController.tabBarItem = UITabBarItem(
            title: "Home",
            image: UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill")
        )
        return hostingController
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
