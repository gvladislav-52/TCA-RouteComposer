//
//  MainSceneConfiguration.swift
//  RouterPoser
//
//  Created by Senla on 22.05.2025.
//
import RouteComposer
import UIKit

public enum MainSceneConfiguration {
    typealias MainContext = Any?

    static func fromInitialScreen() -> AnyDestination {
        Destination(to: Self.landingStep).unwrapped()
    }

    static func navigationStep<C>() -> DestinationStep<AppNavigationController, C> {
        GeneralStep.custom(using: ClassFinder())
    }
}

 extension MainSceneConfiguration {
    enum Tabs {
        static let homeTabFactory: CompleteFactory<NavigationControllerFactory<AppNavigationController, MainContext>> =
            CompleteFactoryAssembly(factory: NavigationControllerFactory())
            .with(HomeFactory())
            .assemble()
        static let authTabFactory: CompleteFactory<NavigationControllerFactory<AppNavigationController, MainContext>> =
            CompleteFactoryAssembly(factory: NavigationControllerFactory())
            .with(AuthFactory())
            .assemble()
        static let profileTabFactory: CompleteFactory<NavigationControllerFactory<AppNavigationController, MainContext>> =
            CompleteFactoryAssembly(factory: NavigationControllerFactory())
            .with(ProfileFactory())
            .assemble()
    }

     static let tabBarFactory: CompleteFactory<TabBarControllerFactory<AppTabBarController, MainContext>> =
        CompleteFactoryAssembly(factory: TabBarControllerFactory())
        .with(Tabs.homeTabFactory)
        .with(Tabs.authTabFactory)
        .with(Tabs.profileTabFactory)
        .assemble()

    static let landingStep = StepAssembly(finder: ClassFinder(), factory: tabBarFactory)
        .using(GeneralAction.replaceRoot(animationOptions: .transitionCrossDissolve))
        .assemble(from: GeneralStep.root())
}


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
        let shadowImage = UIImage(systemName: "xmark")!
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
        appearance.backgroundColor = UIColor.blue
        appearance.shadowColor = .clear
        // Label Settings
        appearance.titleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font: UIFont.systemFont(ofSize: UIFont.systemFontSize)
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


//public final class AppTabBarController: UITabBarController {
//    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//    }
//
//    @available(*, unavailable)
//    public required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}

public final class AppTabBarController: UITabBarController {
    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        configureTabBarAppearance()
    }

    @available(*, unavailable)
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func configureTabBarAppearance() {
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground() // или configureWithDefaultBackground()

        appearance.backgroundColor = .systemBlue // цвет фона таббара
        appearance.stackedLayoutAppearance.selected.iconColor = .white // цвет иконки выбранного таба
        appearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.white] // цвет текста выбранного таба

        appearance.stackedLayoutAppearance.normal.iconColor = .lightGray // цвет иконки обычного таба
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.lightGray] // цвет текста обычного таба

        tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = appearance
        }
    }
}

