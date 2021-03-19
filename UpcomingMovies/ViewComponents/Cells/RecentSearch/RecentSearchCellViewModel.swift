//
//  RecentSearchCellViewModel.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 11/7/18.
//  Copyright © 2018 Bheem Singh. All rights reserved.
//

import Foundation

protocol RecentSearchCellViewModelProtocol {
    
    var searchText: String { get }
    
}

final class RecentSearchCellViewModel: RecentSearchCellViewModelProtocol {
    
    let searchText: String
    
    init(searchText: String) {
        self.searchText = searchText
    }
    
}
