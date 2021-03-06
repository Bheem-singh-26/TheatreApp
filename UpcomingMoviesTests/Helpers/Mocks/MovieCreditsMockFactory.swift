//
//  MovieCreditsMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Bheem Singh on 7/28/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockMovieCreditsInteractor: MovieCreditsInteractorProtocol {
    
    var getMovieCreditsResult: Result<MovieCredits, Error>?
    func getMovieCredits(for movieId: Int, page: Int?, completion: @escaping (Result<MovieCredits, Error>) -> Void) {
        completion(getMovieCreditsResult!)
    }
    
}

class MockMovieCreditsFactory: MovieCreditsFactoryProtocol {
    
    var sections: [MovieCreditsCollapsibleSection] = []

}
