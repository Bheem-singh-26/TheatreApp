//
//  MovieCreditsViewSection.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 7/28/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation

struct MovieCreditsCollapsibleSection {
    let type: MovieCreditsViewSection
    var opened: Bool
}

enum MovieCreditsViewSection {
    case cast, crew
    
    var title: String {
        switch self {
        case .cast:
            return LocalizedStrings.cast.localized
        case .crew:
            return LocalizedStrings.crew.localized
        }
    }
    
}
