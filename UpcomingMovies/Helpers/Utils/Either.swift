//
//  Either.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 7/4/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation

enum Either<A, B> {
    
    case left(A)
    case right(B)
    
}
