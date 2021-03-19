//
//  UpcomingMoviesInteractor.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/13/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

struct UpcomingMoviesInteractor: MoviesInteractorProtocol {
    
    private let movieUseCase: MovieUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.movieUseCase = useCaseProvider.movieUseCase()
    }
    
    func getMovies(page: Int, completion: @escaping (Result<[Movie], Error>) -> Void) {
        movieUseCase.getUpcomingMovies(page: page, completion: completion)
    }
    
}
