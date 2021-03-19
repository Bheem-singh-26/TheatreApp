//
//  SplashBuilder.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 9/18/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import UIKit

final class SplashBuilder {
    
    class func buildViewController() -> UIViewController {
        let viewController = SplashViewController.instantiate()
        viewController.viewModel = DIContainer.shared.resolve()
        
        let navigationController = UINavigationController(rootViewController: viewController)
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationController]
        
        return tabBarController
    }
    
}
