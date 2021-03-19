//
//  SceneAssembly.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 17/03/21.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import Swinject

final class SceneAssembly: Assembly {
    
    func assemble(container: Container) {
        let assemblies: [Assembly] = [
            SplashAssembly(),
            AccountAssembly(),
            AuthenticationAssembly(),
            ProfileAssembly(),
            SavedMoviesAssembly(),
            CustomListsAssembly(),
            CustomListDetailAssembly(),
            UpcomingMoviesAssembly(),
            MovieDetailAssembly(),
            SearchMoviesAssembly(),
            MovieListAssembly(),
            MovieCreditsAssembly(),
            MovieVideosAssembly(),
            MovieReviewsAssembly(),
            MovieReviewDetailAssembly()
        ]
        assemblies.forEach { $0.assemble(container: container) }
    }
    
}
