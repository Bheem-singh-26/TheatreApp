//
//  CustomListsMockFactory.swift
//  UpcomingMoviesTests
//
//  Created by Bheem Singh on 7/27/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
@testable import UpcomingMovies
@testable import UpcomingMoviesDomain

class MockCustomListsInteractor: CustomListsInteractorProtocol {
    
    var getCustomListsResult: Result<[List], Error>!
    func getCustomLists(page: Int?, completion: @escaping (Result<[List], Error>) -> Void) {
        completion(getCustomListsResult!)
    }
    
}
