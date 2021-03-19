//
//  MovieDetailOption.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 12/8/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

protocol MovieDetailOption: class {
    
    var title: String { get }
    var icon: UIImage { get }
    
   func prepare(coordinator: MovieDetailCoordinatorProtocol?)
    
}
