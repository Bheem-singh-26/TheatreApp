//
//  ProfileMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Bheem Singh on 7/18/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockProfileInteractor: ProfileInteractorProtocol {
    
    var getAccountDetailResult: Result<User, Error>?
    func getAccountDetail(completion: @escaping (Result<User, Error>) -> Void) {
        completion(getAccountDetailResult!)
    }
    
}

class MockProfileViewFactory: ProfileFactoryProtocol {
    
    var sections: [ProfileSection] = []
    
    var collectionOptions: [ProfileCollectionOption] = []
    
    var groupOptions: [ProfileGroupOption] = []
    
    var configurationOptions: [ProfileConfigurationOption] = []
    
}
