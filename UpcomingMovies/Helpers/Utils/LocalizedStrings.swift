//
//  LocalizedStrings.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 7/3/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation

protocol Localizable {
    
    var tableName: String { get }
    var localized: String { get }
    
}

extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    
    var localized: String {
        return rawValue.localized(tableName: tableName)
    }
    
}

enum LocalizedStrings: String, Localizable {
    
    case upcomingMoviesTabBarTitle
    case upcomingMoviesTitle
    
    case searchMoviesTabBarTitle
    case searchMoviesTitle
    case recentSearches
    case emptySearchResults
    
    case recentlyVisitedSeearchSectionTitle
    case movieGenresSearchSectionTitle
    
    case favoritesTabBarTitle
    case favoritesTitle
    
    case accountTabBarTitle
    case accountTitle
    
    case favoritesCollectionOption
    case watchlistCollectionOption
    case customListGroupOption
    case includeAdults
    
    case signOutConfirmationTitle
    case signOut
    
    case emptyMovieResults
    case emptyVideoResults
    case emptyCreditReults
    
    case movieDetailTitle
    case movieDetailShareText
    case reviewsDetailOptions
    case trailersDetailOptions
    case creditsDetailOptions
    case similarsDetailOptions
    
    case movieCreditAccessibility
    
    case addToFavoritesHint
    case removeFromFavoritesHint
    
    case expandMovieCellsHint
    case collapseMovieCellsHint
    
    case topRatedMoviesTitle
    case popularMoviesTitle
    case similarMoviesTitle

    case cast
    case crew

    case ratingHint
    
    var tableName: String {
        return "Localizable"
    }
    
}
