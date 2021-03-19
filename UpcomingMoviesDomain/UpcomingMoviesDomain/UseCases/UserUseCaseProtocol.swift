//
//  UserUseCaseProtocol.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 10/27/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

public protocol UserUseCaseProtocol {
    
    var didUpdateUser: (() -> Void)? { get set }
    
    func find(with id: Int) -> User?
    func saveUser(_ user: User)
    
}
