//
//  Genre.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 1/1/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

public struct Genre: Decodable {
    
    public let id: Int
    public let name: String
    
    public init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
}

extension Genre: DomainConvertible {
    
    func asDomain() -> UpcomingMoviesDomain.Genre {
        return UpcomingMoviesDomain.Genre(id: id, name: name)
    }
    
}
