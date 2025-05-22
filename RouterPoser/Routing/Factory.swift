//
//  Factory.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import SwiftUI
import RouteComposer
import ComposableArchitecture


//struct TestFactory: Factory {
//    typealias ContentView = TestView
//    typealias Feature = TestFeature
//    typealias ViewController = UIHostingController<ContentView>
//    typealias Context = Any?
//
//    func build(with context: Context = nil) throws -> ViewController {
//        UIHostingController(rootView: build(with: context))
//    }
//
//    func build(with context: Context = nil) -> ContentView {
//        let state = Feature.State()
//        let feature = Feature()
////        let provider = AuthorizationProvider(
////            apiCaller: LSNetworkProvider.Authorization(),
////            environment: .current
////        )
//        let store = Store(initialState: state) {
//            feature
//        }
////        } withDependencies: { (dependencies: inout DependencyValues) in
////            dependencies.dataAuthorizationProvider = provider
////        }
//        //return ContentView(store: store)
//        return ContentView()
//    }
//}
