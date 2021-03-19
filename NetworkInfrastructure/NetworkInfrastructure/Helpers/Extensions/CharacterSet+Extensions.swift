//
//  CharacterSet+Extensions.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 11/3/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import Foundation

extension CharacterSet {
    
    static let urlQueryValueAllowed: CharacterSet = {
        let generalDelimitersToEncode = ":#[]@"
        let subDelimitersToEncode = "!$&'()*+,;="
        
        var allowed = CharacterSet.urlQueryAllowed
        allowed.remove(charactersIn: "\(generalDelimitersToEncode)\(subDelimitersToEncode)")
        return allowed
    }()
    
}
