//
//  ReviewResult.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 2/11/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

struct ReviewResult: Decodable, Paginable {
    
    let results: [Review]
    var currentPage: Int
    var totalPages: Int
    
    private enum CodingKeys: String, CodingKey {
        case results
        case currentPage = "page"
        case totalPages = "total_pages"
    }
    
}
