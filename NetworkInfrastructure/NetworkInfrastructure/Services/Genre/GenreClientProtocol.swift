//
//  GenreClientProtocol.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 12/24/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

protocol GenreClientProtocol {

    func getAllGenres(completion: @escaping (Result<GenreResult, APIError>) -> Void)

}
