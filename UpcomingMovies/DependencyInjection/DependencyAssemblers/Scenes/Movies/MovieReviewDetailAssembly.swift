//
//  MovieReviewDetailAssembly.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 9/17/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import Swinject
import UpcomingMoviesDomain

final class MovieReviewDetailAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(MovieReviewDetailViewModelProtocol.self) { (_, review: Review?) in
            MovieReviewDetailViewModel(review: review!)
        }
    }
    
}
