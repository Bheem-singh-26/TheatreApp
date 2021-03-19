//
//  RemoteDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 11/2/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

public protocol RemoteDataSourceProtocol {

    func configure(with apiKey: String, readAccessToken: String)

    func movieDataSource() -> MovieRemoteDataSourceProtocol
    func genreDataSource() -> GenreRemoteDataSourceProtocol
    func accountDataSource() -> AccountRemoteDataSourceProtocol
    func authDataSource() -> AuthRemoteDataSourceProtocol
    func configurationDataSource() -> ConfigurationRemoteDataSourceProtocol
    
}
