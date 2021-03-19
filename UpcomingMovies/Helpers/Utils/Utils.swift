//
//  Utils.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 1/28/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

func degreesToRadians (_ value: CGFloat) -> CGFloat {
    let piDegrees: CGFloat = 180.0
    return (value * CGFloat.pi) / piDegrees
}

func radiansToDegrees (_ value: CGFloat) -> CGFloat {
    let piDegrees: CGFloat = 180.0
    return (value * piDegrees) / CGFloat.pi
}
