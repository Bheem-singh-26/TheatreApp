//
//  Account.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 11/17/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

public struct Account {
    
    public let accountId: Int
    public let sessionId: String
    
    public init(accountId: Int, sessionId: String) {
        self.accountId = accountId
        self.sessionId = sessionId
    }
    
}
