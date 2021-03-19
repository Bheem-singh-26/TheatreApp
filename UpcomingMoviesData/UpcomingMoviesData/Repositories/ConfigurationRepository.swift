//
//  ConfigurationRepository.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 5/24/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

public final class ConfigurationRepository: ConfigurationUseCaseProtocol {
    
    private let remoteDataSource: ConfigurationRemoteDataSourceProtocol
    
    init(remoteDataSource: ConfigurationRemoteDataSourceProtocol) {
        self.remoteDataSource = remoteDataSource
    }
    
    public func getConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void) {
        remoteDataSource.getConfiguration(completion: completion)
    }
}
