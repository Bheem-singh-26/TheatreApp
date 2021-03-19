//
//  MovieDetailFactory.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 12/10/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

final class MovieDetailFactory: MovieDetailFactoryProtocol {

    var options: [MovieDetailOption] {
        return [ReviewsMovieDetailOption(),
                TrailersMovieDetailOption(),
                CreditsMovieDetailOption(),
                SimilarsMovieDetailOption()]
    }
    
}
