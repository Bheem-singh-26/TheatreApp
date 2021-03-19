//
//  ProfileSelectableOptionCellViewModel.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 3/24/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol ProfileSelectableOptionCellViewModelProtocol {
    
    var title: String? { get }
    
}

final class ProfileSelectableOptionCellViewModel: ProfileSelectableOptionCellViewModelProtocol {
    
    let title: String?
    
    init(_ profileCollectionOption: ProfileOptionProtocol) {
        self.title = profileCollectionOption.title
    }
    
}
