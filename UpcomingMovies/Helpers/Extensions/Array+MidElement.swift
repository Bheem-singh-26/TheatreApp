//
//  Array+MidElement.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 5/25/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation

extension Array {
    
    var mid: Element? {
        guard count != 0 else { return nil }

        let midIndex = (count > 1 ? count - 1 : count) / 2
        return self[midIndex]
    }
    
}
