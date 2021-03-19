//
//  DomainConvertible.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 12/30/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

protocol DomainConvertible {
    
    associatedtype Domain
    
    func asDomain() -> Domain
    
}
