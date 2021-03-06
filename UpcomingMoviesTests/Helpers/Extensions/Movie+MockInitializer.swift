//
//  Movie+MockInitializer.swift
//  UpcomingMoviesTests
//
//  Created by Bheem Singh on 7/7/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

extension Movie {
    
    static func with(id: Int = 1,
                     title: String = "Movie 1",
                     genreIds: [Int] = [],
                     overview: String = "Overview",
                     posterPath: String? = "/poster.jpg",
                     backdropPath: String? = "/backdrop.jpg",
                     releaseDate: String? = "02-21-2019", voteAverage: Double = 5.0) -> Movie {
        return Movie(id: id, title: title, genreIds: genreIds,
                     overview: overview, posterPath: posterPath,
                     backdropPath: backdropPath, releaseDate: releaseDate,
                     voteAverage: voteAverage)
    }
    
}
