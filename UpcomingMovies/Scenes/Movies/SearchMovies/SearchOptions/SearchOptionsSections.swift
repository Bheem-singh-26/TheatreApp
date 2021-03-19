//
//  SearchOptionsSections.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/28/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation

enum SearchOptionsSection {
    case recentlyVisited, defaultSearches, genres
    
    var title: String? {
        switch self {
        case .recentlyVisited:
            return LocalizedStrings.recentlyVisitedSeearchSectionTitle.localized
        case .defaultSearches:
            return nil
        case .genres:
            return LocalizedStrings.movieGenresSearchSectionTitle.localized
        }
    }
    
}
