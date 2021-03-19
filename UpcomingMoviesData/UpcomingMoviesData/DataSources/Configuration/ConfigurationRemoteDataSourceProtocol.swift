//
//  ConfigurationRemoteDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 5/24/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

public protocol ConfigurationRemoteDataSourceProtocol {
    
    func getConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void)
    
}
