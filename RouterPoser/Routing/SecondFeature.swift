//
//  SecondFeature.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import Foundation
//
//import ComposableArchitecture
//
//@Reducer
//struct SecondFeature {
//    @ObservableState
//    struct State: Equatable {}
//    
//    enum Action {}
//    
//    var body: some Reducer<State, Action> {
//        Reduce { state, action in
//            return .none
//        }
//    }
//}
//
//
//import SwiftUI
//import RouteComposer
//
//struct SecondView: View, ContextChecking {
//    func isTarget(for context: Any?) -> Bool { true }
//    typealias Context = Any?
//
//    var body: some View {
//           ZStack {
//               Color.red
//                   .edgesIgnoringSafeArea(.all)
//               
//               VStack(spacing: 16) {
//                   Image(systemName: "star.fill")
//                       .imageScale(.large)
//                       .foregroundStyle(.yellow)
//                   Text("This is the second screen")
//               }
//               .padding()
//           }
//       }
//}
//
//import SwiftUI
//import RouteComposer
//import ComposableArchitecture
//
//struct SecondFactory: Factory {
//    typealias ContentView = SecondView
//    typealias Feature = SecondFeature
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
//        let store = Store(initialState: state) { feature }
//        return ContentView()
//    }
//}
//
//
