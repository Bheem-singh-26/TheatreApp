//
//  Bindable.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 11/5/18.
//  Copyright © 2018 Bheem Singh. All rights reserved.
//

import Foundation

class Bindable<T> {
    
    typealias Listener = ((T) -> Void)
    var listener: Listener?
    
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    func bindAndFire(_ listener: Listener?) {
        self.listener = listener
        listener?(value)
    }
    
}
