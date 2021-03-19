//
//  RetryActionable.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 5/22/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation

protocol RetryActionable {
    var retry: (() -> Void)? { get set }
    
    func resetState()
}
