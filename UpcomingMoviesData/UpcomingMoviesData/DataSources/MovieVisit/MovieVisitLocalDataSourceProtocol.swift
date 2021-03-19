//
//  MovieVisitLocalDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 11/2/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

public protocol MovieVisitLocalDataSourceProtocol {
    
    var didUpdateMovieVisit: (() -> Void)? { get set }
    
    func getMovieVisits() -> [MovieVisit]
    func save(with id: Int, title: String, posterPath: String?)
    func hasMovieVisits() -> Bool
    
}
