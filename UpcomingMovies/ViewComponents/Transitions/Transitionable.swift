//
//  ImageTransitionable.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 1/30/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

protocol Transitionable: UIViewController {
    
    var transitionContainerView: UIView! { get }
    
}
