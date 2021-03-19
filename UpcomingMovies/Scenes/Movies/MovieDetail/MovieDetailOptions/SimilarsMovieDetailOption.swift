//
//  SimilarsMovieDetailOption.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 12/8/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

class SimilarsMovieDetailOption: MovieDetailOption {
    
    var title: String {
        return LocalizedStrings.similarsDetailOptions.localized
    }
    
    var icon: UIImage {
        return #imageLiteral(resourceName: "SimilarMovies")
    }
    
    func prepare(coordinator: MovieDetailCoordinatorProtocol?) {
        coordinator?.showSimilarMovies()
    }

}
