//
//  User+MockInitializer.swift
//  UpcomingMoviesTests
//
//  Created by Bheem Singh on 7/16/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

extension User {
    
    static func with(id: Int = 1,
                     name: String = "Test",
                     username: String = "Username",
                     includeAdult: Bool = false) -> User {
        return User(id: id, name: name, username: username, includeAdult: includeAdult)
    }
    
}
