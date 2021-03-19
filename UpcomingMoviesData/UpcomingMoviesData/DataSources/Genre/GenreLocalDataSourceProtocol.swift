//
//  GenreLocalDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 11/2/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

public protocol GenreLocalDataSourceProtocol {
    
    var didUpdateGenre: (() -> Void)? { get set }
    
    func saveGenres(_ genres: [Genre])
    func find(with id: Int) -> Genre?
    func findAll() -> [Genre]
    
}
