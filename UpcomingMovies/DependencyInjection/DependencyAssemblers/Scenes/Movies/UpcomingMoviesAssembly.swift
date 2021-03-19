//
//  UpcomingMoviesAssembly.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 9/15/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import Swinject
import UpcomingMoviesDomain

final class UpcomingMoviesAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(MoviesInteractorProtocol.self, name: "UpcomingMovies") { resolver in
            let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self)
            return UpcomingMoviesInteractor(useCaseProvider: useCaseProvider!)
        }
        
        container.register(UpcomingMoviesViewModelProtocol.self) { resolver in
            let interactor = resolver.resolve(MoviesInteractorProtocol.self, name: "UpcomingMovies")
            return UpcomingMoviesViewModel(interactor: interactor!)
        }
    }
    
}
