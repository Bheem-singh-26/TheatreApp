//
//  GenreRemoteDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 11/2/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

public protocol GenreRemoteDataSourceProtocol {
    
    func getAllGenres(completion: @escaping (Result<[Genre], Error>) -> Void)
    
}
