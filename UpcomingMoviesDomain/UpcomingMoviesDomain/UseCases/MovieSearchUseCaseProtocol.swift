//
//  MovieSearchProtocol.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 10/27/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

public protocol MovieSearchUseCaseProtocol {
    
    var didUpdateMovieSearch: (() -> Void)? { get set }
    
    func getMovieSearches() -> [MovieSearch]
    func save(with searchText: String)
    
}
