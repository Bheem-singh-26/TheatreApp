//
//  Genre.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 11/8/18.
//  Copyright © 2018 Bheem Singh. All rights reserved.
//

public struct Genre: Equatable {
    
    public let id: Int
    public let name: String
    
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
}
