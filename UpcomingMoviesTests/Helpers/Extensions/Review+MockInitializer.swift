//
//  Review+MockInitializer.swift
//  UpcomingMoviesTests
//
//  Created by Bheem Singh on 7/7/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

extension Review {
    
    static func with(id: String = "1",
                     authorName: String = "ABC",
                     content: String = "Video1") -> Review {
        return Review(id: id, authorName: authorName, content: content)
    }
    
}
