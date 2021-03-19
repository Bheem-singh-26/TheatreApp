//
//  URLRequest+Extensions.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 11/3/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import Foundation

extension URLRequest {
    
    mutating func setJSONContentType() {
        setValue("application/json; charset=utf-8",
                 forHTTPHeaderField: "Content-Type")
    }
    
    mutating func setHeader(for httpHeaderField: String, with value: String) {
        setValue(value, forHTTPHeaderField: httpHeaderField)
    }
    
}
