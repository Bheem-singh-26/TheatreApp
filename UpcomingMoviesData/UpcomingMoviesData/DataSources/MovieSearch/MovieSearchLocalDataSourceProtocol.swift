//
//  MovieSearchLocalDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 11/2/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

public protocol MovieSearchLocalDataSourceProtocol {
    
    var didUpdateMovieSearch: (() -> Void)? { get set }
    
    func getMovieSearches() -> [MovieSearch]
    func save(with searchText: String)
    
}
