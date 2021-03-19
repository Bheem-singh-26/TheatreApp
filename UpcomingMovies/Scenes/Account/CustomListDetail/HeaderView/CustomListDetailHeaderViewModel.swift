//
//  CustomListDetailHeaderViewModel.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 4/20/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol CustomListDetailHeaderViewModelProtocol {
    
    var name: String { get }
    var description: String? { get }
    var posterURL: URL? { get }
    
}

struct CustomListDetailHeaderViewModel: CustomListDetailHeaderViewModelProtocol {
    
    let name: String
    let description: String?
    let posterURL: URL?
    
    init(list: List) {
        self.name = list.name
        self.description = list.description
        self.posterURL = list.backdropURL
    }
    
}
