//
//  PlaceholderDisplayable.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 4/7/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

typealias Placeholderable = Displayable & Detailable
typealias RetryPlaceHolderable = Displayable & Detailable & RetryActionable

protocol PlaceholderDisplayable: Retryable, Emptiable {}

extension PlaceholderDisplayable where Self: UIViewController {
    
    func hideDisplayedPlaceholderView() {
        hideEmptyView()
        hideRetryView()
    }
    
}
