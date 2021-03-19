//
//  AuthPermissionViewModel.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 3/20/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import Foundation

final class AuthPermissionViewModel: AuthPermissionViewModelProtocol {

    private var authPermissionURL: URL?

    // MARK: - Initializers
    
    init(authPermissionURL: URL?) {
        self.authPermissionURL = authPermissionURL
    }

    // MARK: - AuthPermissionViewModelProtocol
    
    var authPermissionURLRequest: URLRequest? {
        guard let authPermissionURL = authPermissionURL else { return nil }
        return URLRequest(url: authPermissionURL)
    }
    
}
