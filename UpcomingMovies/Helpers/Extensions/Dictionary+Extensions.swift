//
//  Dictionary+Extensions.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 3/24/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import Foundation

extension Dictionary {
    
    func percentEscaped() -> String {
        return map { (key, value) in
            let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryValueAllowed) ?? ""
            return escapedKey + "=" + escapedValue
            }
            .joined(separator: "&")
    }
    
}
