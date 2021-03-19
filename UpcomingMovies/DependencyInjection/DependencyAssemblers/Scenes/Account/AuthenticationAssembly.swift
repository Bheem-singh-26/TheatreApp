//
//  AuthenticationAssembly.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 9/15/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import Swinject

final class AuthenticationAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(AuthPermissionViewModelProtocol.self) { (_, authPermissionURL: URL?) in
            AuthPermissionViewModel(authPermissionURL: authPermissionURL)
        }
    }
    
}
