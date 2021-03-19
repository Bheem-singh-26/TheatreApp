//
//  AuthUseCaseProtocol.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 11/17/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import Foundation

public protocol AuthUseCaseProtocol {
    
    func getAuthURL(completion: @escaping (Result<URL, Error>) -> Void)
    func signInUser(completion: @escaping (Result<User, Error>) -> Void)
    func signOutUser(completion: @escaping (Result<Bool, Error>) -> Void)
    func currentUserId() -> Int?
    
}
