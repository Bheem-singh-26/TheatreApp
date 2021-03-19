//
//  LocalDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 11/2/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

public protocol LocalDataSourceProtocol {

    func genreDataSource() -> GenreLocalDataSourceProtocol
    func movieVisitDataSource() -> MovieVisitLocalDataSourceProtocol
    func movieSearchDataSource() -> MovieSearchLocalDataSourceProtocol
    func userDataSource() -> UserLocalDataSourceProtocol
    
}
