//
//  ListResult.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 4/19/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

public struct ListResult: Decodable, Paginable {
    
    let results: [List]
    var currentPage: Int
    var totalPages: Int
    
    private enum CodingKeys: String, CodingKey {
        case results
        case currentPage = "page"
        case totalPages = "total_pages"
    }
    
}
