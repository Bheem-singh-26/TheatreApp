//
//  Descriptable.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 11/3/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

protocol Descriptable {
    
    var description: String { get }
    
}

protocol ErrorDescriptable: Descriptable {}
