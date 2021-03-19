//
//  MovieDetailCoordinator.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/14/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import UIKit
import UpcomingMoviesDomain

enum MovieDetailInfo {
    case complete(movie: Movie)
    case partial(movieId: Int, movieTitle: String)
}

final class MovieDetailCoordinator: Coordinator, MovieDetailCoordinatorProtocol {
    
    var childCoordinators: [Coordinator] = []
    var parentCoordinator: Coordinator?
    var navigationController: UINavigationController
    
    var movieInfo: MovieDetailInfo!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = MovieDetailViewController.instantiate()
        
        viewController.viewModel = viewModel(for: movieInfo)
        viewController.coordinator = self
        
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func showMovieVideos() {
        let coordinator = MovieVideosCoordinator(navigationController: navigationController)
        
        let movieInfo = getMoviePartialInfo(for: self.movieInfo)
        
        coordinator.movieId = movieInfo.id
        coordinator.movieTitle = movieInfo.title
        coordinator.parentCoordinator = unwrappedParentCoordinator
        
        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }
    
    func showMovieCredits() {
        let coordinator = MovieCreditsCoordinator(navigationController: navigationController)
        
        let movieInfo = getMoviePartialInfo(for: self.movieInfo)
        
        coordinator.movieId = movieInfo.id
        coordinator.movieTitle = movieInfo.title
        coordinator.parentCoordinator = unwrappedParentCoordinator
        
        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }
    
    func showMovieReviews() {
        let coordinator = MovieReviewsCoordinator(navigationController: navigationController)
        
        let movieInfo = getMoviePartialInfo(for: self.movieInfo)
        
        coordinator.movieId = movieInfo.id
        coordinator.movieTitle = movieInfo.title
        coordinator.parentCoordinator = unwrappedParentCoordinator
        
        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }
    
    func showSimilarMovies() {
        let coordinator = SimilarMoviesCoordinator(navigationController: navigationController)
        
        let movieInfo = getMoviePartialInfo(for: self.movieInfo)
        
        coordinator.movieId = movieInfo.id
        coordinator.parentCoordinator = unwrappedParentCoordinator
        
        unwrappedParentCoordinator.childCoordinators.append(coordinator)
        coordinator.start()
    }
    
    private func viewModel(for movieInfo: MovieDetailInfo) -> MovieDetailViewModelProtocol {
        switch movieInfo {
        case .complete(let movie):
            return DIContainer.shared.resolve(argument: movie)
        case .partial(let movieId, let movieTitle):
            return DIContainer.shared.resolve(arguments: movieId, movieTitle)
        }
    }
    
    private func getMoviePartialInfo(for movieInfo: MovieDetailInfo) -> (id: Int, title: String) {
        switch movieInfo {
        case .complete(let movie):
            return (movie.id, movie.title)
        case .partial(let movieId, let movieTitle):
            return (movieId, movieTitle)
        }
    }
    
}