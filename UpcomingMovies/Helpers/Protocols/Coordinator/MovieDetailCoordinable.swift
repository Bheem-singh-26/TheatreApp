//
//  MovieDetailCoordinable.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 7/26/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieDetailCoordinable {
    
    func showMovieDetail(for movie: Movie)
    
}

extension MovieDetailCoordinable where Self: Coordinator {
    
    func showMovieDetail(for movie: Movie) {
        let coordinator = MovieDetailCoordinator(navigationController: navigationController)
        
        coordinator.movieInfo = .complete(movie: movie)
        coordinator.parentCoordinator = unwrappedParentCoordinator
        
        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }
    
}
