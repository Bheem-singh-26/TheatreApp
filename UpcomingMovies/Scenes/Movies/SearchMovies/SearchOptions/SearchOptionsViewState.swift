//
//  SearchOptionsViewState.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/28/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation

enum SearchOptionsViewState {
    
    case emptyMovieVisits
    case populatedMovieVisits
    
    var sections: [SearchOptionsSection] {
        switch self {
        case .emptyMovieVisits:
            return [.defaultSearches, .genres]
        case .populatedMovieVisits:
            return [.recentlyVisited, .defaultSearches, .genres]
        }
    }
    
}
