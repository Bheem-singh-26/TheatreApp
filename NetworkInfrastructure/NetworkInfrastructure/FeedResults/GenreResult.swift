//
//  GenreResult.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 11/3/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

struct GenreResult: Decodable {
    
    let genres: [Genre]

}
