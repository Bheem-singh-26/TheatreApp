//
//  MovieResult.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 11/6/18.
//  Copyright © 2018 Bheem Singh. All rights reserved.
//

struct MovieResult: Decodable, Paginable {

    let results: [Movie]
    var currentPage: Int
    var totalPages: Int
    
    private enum CodingKeys: String, CodingKey {
        case results
        case currentPage = "page"
        case totalPages = "total_pages"
    }
    
}
