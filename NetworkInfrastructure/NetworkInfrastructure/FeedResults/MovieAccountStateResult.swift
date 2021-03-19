//
//  MovieAccountStateResult.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 4/6/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

struct MovieAccountStateResult: Decodable {
    
    let id: Int
    let favorite: Bool
    let watchlist: Bool
    
}
