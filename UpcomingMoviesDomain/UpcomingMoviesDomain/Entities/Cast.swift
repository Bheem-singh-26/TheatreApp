//
//  Cast.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 2/13/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

public struct Cast: Equatable {
    
    public let id: Int
    public let character: String
    public let name: String
    public let photoPath: String?
    
    public init(id: Int, character: String, name: String, photoPath: String?) {
        self.id = id
        self.character = character
        self.name = name
        self.photoPath = photoPath
    }
    
}
