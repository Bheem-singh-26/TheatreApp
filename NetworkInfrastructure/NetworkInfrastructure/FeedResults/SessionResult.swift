//
//  SessionResult.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 3/24/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

struct SessionResult: Decodable {
    
    let success: Bool
    let sessionId: String?
    
    private enum CodingKeys: String, CodingKey {
        case success
        case sessionId = "session_id"
    }
    
}
