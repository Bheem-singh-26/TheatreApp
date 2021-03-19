//
//  AppGroup.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 2/13/21.
//  Copyright © 2021 Bheem Singh. All rights reserved.
//

enum AppGroup: String, CaseIterable {

    case movies = "group.movies.extension"

    static var allCasesIdentifiers: [String] {
        return AppGroup.allCases.map { $0.rawValue }
    }

}
