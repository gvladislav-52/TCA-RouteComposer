//
//  AuthFactory.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import SwiftUI
import RouteComposer
import ComposableArchitecture


struct AuthFactory: Factory {
    typealias ContentView = AuthView
    typealias Feature = AuthFeature
    typealias ViewController = UIHostingController<ContentView>
    typealias Context = Any?

    func build(with context: Context = nil) throws -> ViewController {
        let hostingController = UIHostingController(rootView: build(with: context))
        hostingController.tabBarItem = UITabBarItem(
            title: "Auth",
            image: UIImage(systemName: "phone"),
            selectedImage: UIImage(systemName: "phone.fill")
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
