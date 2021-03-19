//
//  UIRefreshControl+Extensions.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 2/7/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

extension UIRefreshControl {
    
    func endRefreshing(with delay: TimeInterval = 0.5) {
        if isRefreshing {
            perform(#selector(UIRefreshControl.endRefreshing), with: nil, afterDelay: delay)
        }
    }
    
}
