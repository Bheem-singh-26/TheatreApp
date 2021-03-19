//
//  CreditResult.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 2/13/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

struct CreditResult: Decodable {

    let id: Int
    let cast: [Cast]
    let crew: [Crew]
    
}
