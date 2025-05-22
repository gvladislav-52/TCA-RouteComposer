//
//  HomeConfiguration.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import UIKit
import RouteComposer


enum HomeRouting {
    static func destitionFromLogin() -> AnyDestination {
        Destination(to: destitionFromLoginStep, with: nil).unwrapped()
    }
        
    static let destitionFromLoginStep: DestinationStep<UIViewController, HomeFactory.Context> = StepAssembly(
            finder: UIHostingControllerWithContextFinder<HomeFactory.ContentView>(),
            factory: HomeFactory()
        )
        .using(GeneralAction.replaceRoot(animationOptions: .allowAnimatedContent))
        .from(GeneralStep.root())
        .assemble()
        .unsafelyRewrapped()
}

