//
//  Dictionary+Extensions.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 11/3/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

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
