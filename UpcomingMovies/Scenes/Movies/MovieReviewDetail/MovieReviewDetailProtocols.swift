//
//  MovieReviewDetailProtocols.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/28/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation

protocol MovieReviewDetailViewModelProtocol {
    
    var author: String { get }
    var content: String { get }
    
}

protocol MovieReviewDetailCoordinatorProtocol: class {
    
    func dismiss()
    
}
