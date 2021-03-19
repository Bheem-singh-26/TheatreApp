//
//  DomainConvertible.swift
//  CoreDataInfrastructure
//
//  Created by Bheem Singh on 10/26/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

protocol DomainConvertible {
    
    associatedtype Domain
    
    func asDomain() -> Domain
    
}
