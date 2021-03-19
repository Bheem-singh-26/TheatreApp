//
//  ConfigurationUseCaseProtocol.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 5/24/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

public protocol ConfigurationUseCaseProtocol {
    
    func getConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void)
    
}
