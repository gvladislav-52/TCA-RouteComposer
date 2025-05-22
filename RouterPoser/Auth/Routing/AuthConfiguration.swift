//
//  AuthConfiguration.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import UIKit
import RouteComposer


enum AuthRouting {
    static func destinationFromInitial() -> AnyDestination {
        Destination(to: destinationFromInitialStep, with: nil).unwrapped()
    }
        
    static let destinationFromInitialStep: DestinationStep<UIViewController, AuthFactory.Context> = StepAssembly(
            finder: UIHostingControllerWithContextFinder<AuthFactory.ContentView>(),
            factory: AuthFactory()
        )
        .using(GeneralAction.replaceRoot(animationOptions: .transitionCrossDissolve))
        .from(GeneralStep.root())
        .assemble()
        .unsafelyRewrapped()
}

