//
//  MovieCredits.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 11/17/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

public struct MovieCredits {
    
    public let cast: [Cast]
    public let crew: [Crew]
    
    public init(cast: [Cast], crew: [Crew]) {
        self.cast = cast
        self.crew = crew
    }
    
}
