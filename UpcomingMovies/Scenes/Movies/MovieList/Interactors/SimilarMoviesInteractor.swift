//
//  SimilarMoviesInteractor.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/13/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

struct SimilarMoviesInteractor: MoviesInteractorProtocol {
    
    let movieUseCase: MovieUseCaseProtocol
    let movieId: Int
    
    init(useCaseProvider: UseCaseProviderProtocol, movieId: Int) {
        self.movieUseCase = useCaseProvider.movieUseCase()
        self.movieId = movieId
    }
    
    func getMovies(page: Int, completion: @escaping (Result<[Movie], Error>) -> Void) {
        movieUseCase.getSimilarMovies(page: page, movieId: movieId, completion: completion)
    }
    
}
