//
//  Configuration.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 5/24/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

public struct Configuration {
    
    public private(set) var imagesConfiguration: ImagesConfiguration
    public private(set) var sortConfiguration: SortConfiguration
    
    public init(imagesConfiguration: ImagesConfiguration, sortConfiguration: SortConfiguration) {
        self.imagesConfiguration = imagesConfiguration
        self.sortConfiguration = sortConfiguration
    }
    
}
