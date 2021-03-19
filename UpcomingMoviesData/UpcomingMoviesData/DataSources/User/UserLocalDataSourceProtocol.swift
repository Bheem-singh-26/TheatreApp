//
//  UserLocalDataSourceProtocol.swift
//  UpcomingMoviesData
//
//  Created by Bheem Singh on 11/2/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain

public protocol UserLocalDataSourceProtocol {
    
    var didUpdateUser: (() -> Void)? { get set }
    
    func find(with id: Int) -> User?
    func saveUser(_ user: User)
    
}
