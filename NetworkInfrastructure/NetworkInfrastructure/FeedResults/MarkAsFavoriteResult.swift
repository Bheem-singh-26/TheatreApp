//
//  MarkAsFavoriteResult.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 4/6/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

struct MarkAsFavoriteResult: Decodable {
    
    let statusCode: Int
    let statusMessage: String
    
    private enum CodingKeys: String, CodingKey {
        case statusCode = "status_code"
        case statusMessage = "status_message"
    }
    
}
