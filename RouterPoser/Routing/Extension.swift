//
//  Extension.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//

import UIKit
import RouteComposer

public final class AppNavigationController: UINavigationController {
    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configureNavigationBarAppearance()
    }

    override public init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        configureNavigationBarAppearance()
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // Method for configuring the appearance of the Navigation Bar
    private func configureNavigationBarAppearance() {
        let appearanceConfigurator = NavigationBarAppearanceConfigurator()
        let appearance = appearanceConfigurator.makeDefaultAppearance()
        let shadowImage = UIImage(systemName: "xmarl")!
        let scrollAppearance = appearanceConfigurator.makeScrollStyleAppearence(with: shadowImage)

        navigationBar.standardAppearance = scrollAppearance
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.compactAppearance = scrollAppearance
        navigationBar.compactScrollEdgeAppearance = appearance
    }
}

// Configuration for customizing the appearance of the Navigation Bar
struct NavigationBarAppearanceConfigurator {
    // Method for creating a customized UINavigationBarAppearance
    func makeDefaultAppearance() -> UINavigationBarAppearance {
        let appearance = UINavigationBarAppearance()
        // Background
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.gray
        appearance.shadowColor = .clear
        // Label Settings
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.gray,
            .font: UIFont.systemFontSize
        ]
        // Icon Settings
        appearance.buttonAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.blue
        ]
        return appearance
    }

    func makeScrollStyleAppearence(with shadowImage: UIImage) -> UINavigationBarAppearance {
        let appearance = makeDefaultAppearance()
        appearance.shadowImage = shadowImage
        return appearance
    }
}

