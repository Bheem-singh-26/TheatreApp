//
//  TopRatedMoviesCoordinator.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 7/31/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import UIKit
import UpcomingMoviesDomain

final class TopRatedMoviesCoordinator: MovieListCoordinatorProtocol, Coordinator, MovieDetailCoordinable {
    
    var childCoordinators: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MovieListViewController.instantiate()

        viewController.viewModel = DIContainer.shared.resolve(name: "TopRatedMovies",
                                                              argument: LocalizedStrings.topRatedMoviesTitle.localized)
        viewController.coordinator = self
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
}
