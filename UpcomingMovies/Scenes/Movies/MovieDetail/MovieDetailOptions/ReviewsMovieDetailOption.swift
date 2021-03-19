//
//  ReviewsMovieDetailOption.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 12/8/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

class ReviewsMovieDetailOption: MovieDetailOption {
    
    var title: String {
        return LocalizedStrings.reviewsDetailOptions.localized
    }
    
    var icon: UIImage {
        return #imageLiteral(resourceName: "Reviews")
    }
    
    func prepare(coordinator: MovieDetailCoordinatorProtocol?) {
        coordinator?.showMovieReviews()
    }
    
}
