//
//  SavedMoviesAssembly.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 17/03/21.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import Swinject
import UpcomingMoviesDomain

final class SavedMoviesAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(SavedMoviesInteractorProtocol.self,
                           name: ProfileCollectionOption.favorites.title) { resolver in
                            FavoritesSavedMoviesInteractor(useCaseProvider: resolver.resolve(UseCaseProviderProtocol.self)!)
        }
        container.register(SavedMoviesInteractorProtocol.self,
                           name: ProfileCollectionOption.watchlist.title) { resolver in
                            WatchListSavedMoviesInteractor(useCaseProvider: resolver.resolve(UseCaseProviderProtocol.self)!)
        }
        
        container.register(SavedMoviesViewModelProtocol.self) { (resolver, displayTitle: String?) in
            let interactor = resolver.resolve(SavedMoviesInteractorProtocol.self, name: displayTitle)
            
            let viewModel = SavedMoviesViewModel(interactor: interactor!)
            viewModel.displayTitle = displayTitle
            
            return viewModel
        }
    }
    
}
