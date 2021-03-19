//
//  SavedMoviesInteractor.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 7/23/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class FavoritesSavedMoviesInteractor: SavedMoviesInteractorProtocol {
    
    private let accountUseCase: AccountUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.accountUseCase = useCaseProvider.accountUseCase()
    }
    
    func getSavedMovies(page: Int?, completion: @escaping (Result<[Movie], Error>) -> Void) {
        accountUseCase.getFavoriteList(page: page, completion: completion)
    }
    
}

final class WatchListSavedMoviesInteractor: SavedMoviesInteractorProtocol {
    
    private let accountUseCase: AccountUseCaseProtocol
    
    init(useCaseProvider: UseCaseProviderProtocol) {
        self.accountUseCase = useCaseProvider.accountUseCase()
    }
    
    func getSavedMovies(page: Int?, completion: @escaping (Result<[Movie], Error>) -> Void) {
        accountUseCase.getWatchList(page: page, completion: completion)
    }
    
}
