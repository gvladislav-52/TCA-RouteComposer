//
//  ProfileConfiguration.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import UIKit
import RouteComposer


enum ProfileRouting {
    static func destinationFromHome() -> AnyDestination {
        Destination(to: destinationFromHomeStep, with: nil).unwrapped()
    }
        
    static let destinationFromHomeStep: DestinationStep<UIViewController, ProfileFactory.Context> = StepAssembly(
            finder: UIHostingControllerWithContextFinder<ProfileFactory.ContentView>(),
            factory: ProfileFactory()
        )
        .using(GeneralAction.replaceRoot())
        .from(GeneralStep.root())
        .assemble()
        .unsafelyRewrapped()
}
