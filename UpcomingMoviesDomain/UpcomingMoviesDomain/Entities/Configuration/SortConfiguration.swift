//
//  SortConfiguration.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 8/22/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

public struct SortConfiguration {
    
    public private(set) var movieSortKeys: [String]
    
    public init(movieSortKeys: [String]) {
        self.movieSortKeys = movieSortKeys
    }
    
}
