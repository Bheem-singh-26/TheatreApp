//
//  UpcomingMoviesMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Bheem Singh on 7/7/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockUpcomingMoviesInteractor: MoviesInteractorProtocol {
    
    var displayTitle: String = "Upcoming Movies"

    var upcomingMovies: Result<[UpcomingMoviesDomain.Movie], Error>?
    func getMovies(page: Int, completion: @escaping (Result<[UpcomingMoviesDomain.Movie], Error>) -> Void) {
        completion(upcomingMovies!)
    }
    
}
