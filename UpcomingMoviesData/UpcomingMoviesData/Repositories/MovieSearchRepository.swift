//
//  MovieSearchRepository.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 11/2/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

public final class MovieSearchRepository: MovieSearchUseCaseProtocol {
    
    private var localDataSource: MovieSearchLocalDataSourceProtocol
    
    public var didUpdateMovieSearch: (() -> Void)? {
        didSet {
            self.localDataSource.didUpdateMovieSearch = didUpdateMovieSearch
        }
    }
    
    init(localDataSource: MovieSearchLocalDataSourceProtocol) {
        self.localDataSource = localDataSource
    }
    
    public func getMovieSearches() -> [MovieSearch] {
        return localDataSource.getMovieSearches()
    }
    
    public func save(with searchText: String) {
        localDataSource.save(with: searchText)
    }
    
}
