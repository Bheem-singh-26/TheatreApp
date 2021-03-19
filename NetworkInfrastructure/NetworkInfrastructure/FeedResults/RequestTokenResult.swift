//
//  RequestTokenResult.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 3/20/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

struct RequestTokenResult: Decodable {
    
    let success: Bool
    let token: String
    
    private enum CodingKeys: String, CodingKey {
        case success
        case token = "request_token"
    }
    
}
