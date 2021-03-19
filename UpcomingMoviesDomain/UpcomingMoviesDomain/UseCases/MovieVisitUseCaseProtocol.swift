//
//  MovieVisitUseCase.swift
//  UpcomingMoviesDomain
//
//  Created by Bheem Singh on 10/26/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

public protocol MovieVisitUseCaseProtocol {
    
    var didUpdateMovieVisit: (() -> Void)? { get set }
    
    func getMovieVisits() -> [MovieVisit]
    func save(with id: Int, title: String, posterPath: String?)
    func hasMovieVisits() -> Bool
    
}
