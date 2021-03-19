//
//  MovieReviewsInteractor.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 7/29/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class MovieReviewsInteractor: MovieReviewsInteractorProtocol {
        
    private let movieUseCase: MovieUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.movieUseCase = useCaseProvider.movieUseCase()
    }
    
    func getMovieReviews(for movieId: Int, page: Int?, completion: @escaping (Result<[Review], Error>) -> Void) {
        movieUseCase.getMovieReviews(for: movieId, page: page, completion: completion)
    }
    
}
