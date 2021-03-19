//
//  MovieReviewDetailViewModel.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 5/31/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

struct MovieReviewDetailViewModel: MovieReviewDetailViewModelProtocol {
    
    let author: String
    let content: String
    
    init(review: Review) {
        self.author = review.authorName
        self.content = review.content
    }
    
}
