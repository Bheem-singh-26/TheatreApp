//
//  ProfileAssembly.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 9/15/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import Swinject
import UpcomingMoviesDomain

final class ProfileAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(ProfileFactoryProtocol.self) { _ in
            ProfileFactory()
        }
        
        container.register(ProfileInteractorProtocol.self) { resolver in
            let useCaseProvider = resolver.resolve(UseCaseProviderProtocol.self)
            return ProfileInteractor(useCaseProvider: useCaseProvider!)
        }
        
        container.register(ProfileViewModelProtocol.self) { (resolver, user: User?) in
            let interactor = resolver.resolve(ProfileInteractorProtocol.self)
            let factory = resolver.resolve(ProfileFactoryProtocol.self)
            
            return ProfileViewModel(userAccount: user,
                                    interactor: interactor!,
                                    factory: factory!)
        }
    }
    
}
