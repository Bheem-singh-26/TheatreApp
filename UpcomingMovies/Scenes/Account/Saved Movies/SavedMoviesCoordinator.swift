//
//  SavedMoviesCoordinator.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/25/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import UIKit

final class FavoritesSavedMoviesCoordinator: SavedMoviesCoordinatorProtocol, Coordinator, MovieDetailCoordinable {
    
    var childCoordinators: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = SavedMoviesViewController.instantiate()
        
        viewController.viewModel = DIContainer.shared.resolve(argument: ProfileCollectionOption.favorites.title)
        viewController.coordinator = self
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
}

class WatchListSavedMoviesCoordinator: SavedMoviesCoordinatorProtocol, Coordinator, MovieDetailCoordinable {
    
    var childCoordinators: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = SavedMoviesViewController.instantiate()
        
        viewController.viewModel = DIContainer.shared.resolve(argument: ProfileCollectionOption.watchlist.title)
        viewController.coordinator = self
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
}
