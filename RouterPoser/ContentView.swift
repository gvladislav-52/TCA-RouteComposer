//
//  ContentView.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import SwiftUI
import ComposableArchitecture
import RouteComposer

struct ContentView: View {
    var body: some View {
        RootTabBarRepresentable()
                        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}

struct RootTabBarRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> AppTabBarController {
        do {
            var factory = MainSceneConfiguration.tabBarFactory
            try factory.prepare(with: nil)
            let tabBarController = try factory.build(with: nil) as! AppTabBarController
            return tabBarController
        } catch {
            fatalError("Failed to build tab bar controller: \(error)")
        }
    }
    
    func updateUIViewController(_ uiViewController: AppTabBarController, context: Context) {
        // ...
    }
}
