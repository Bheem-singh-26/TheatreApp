//
//  DefaultSearchOptionCellViewModel.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 1/15/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import Foundation

protocol DefaultSearchOptionCellViewModelProtocol {
    
    var title: String? { get }
    var subtitle: String? { get }
    
}

final class DefaultSearchOptionCellViewModel: DefaultSearchOptionCellViewModelProtocol {
    
    var title: String?
    var subtitle: String?
    
    init(defaultSearchOption: DefaultSearchOption) {
        title = defaultSearchOption.title
        subtitle = defaultSearchOption.subtitle
    }
    
}
