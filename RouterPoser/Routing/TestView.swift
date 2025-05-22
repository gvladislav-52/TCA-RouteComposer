//
//  TestView.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import SwiftUI
import RouteComposer

//struct TestView: View, ContextChecking {
//    func isTarget(for context: Any?) -> Bool {
//        return true
//    }
//    
//    typealias Context = Any?
//    
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    TestView()
//}
//
//struct TestView: View, ContextChecking {
//    func isTarget(for context: Any?) -> Bool { true }
//    typealias Context = Any?
//
//    var body: some View {
//        VStack(spacing: 16) {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundStyle(.tint)
//            Text("Hello, world!")
//
//            Button("Go to Second Screen") {
//                try? DefaultRouter().navigate(to: TestRouting.second())
//            }
//        }
//        .padding()
//    }
//}
