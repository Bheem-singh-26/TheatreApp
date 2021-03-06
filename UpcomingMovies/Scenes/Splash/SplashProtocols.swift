//
//  SplashProtocols.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 8/3/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol SplashViewModelProtocol {
    
    var initialDownloadsEnded: (() -> Void)? { get set }
    
    func startInitialDownloads()
    
}

protocol SplashInteractorProtocol {
    
    func getAppConfiguration(completion: @escaping (Result<Configuration, Error>) -> Void)
    func getAllGenres(completion: @escaping (Result<[Genre], Error>) -> Void)
    
}
