//
//  CreditsMovieDetailOption.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 12/8/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

class CreditsMovieDetailOption: MovieDetailOption {
    
    var title: String {
        return LocalizedStrings.creditsDetailOptions.localized
    }
    
    var icon: UIImage {
        return #imageLiteral(resourceName: "Cast")
    }
    
    func prepare(coordinator: MovieDetailCoordinatorProtocol?) {
        coordinator?.showMovieCredits()
    }
    
}
