//
//  UpcomingMovieCollectionViewCellProtocol.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 3/9/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

protocol UpcomingMovieCollectionViewCellProtocol {
    
    var posterImageView: UIImageView! { get set }
    var viewModel: UpcomingMovieCellViewModelProtocol? { get set }
    
}
