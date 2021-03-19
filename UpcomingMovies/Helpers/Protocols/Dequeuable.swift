//
//  Dequeuable.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 2/12/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

protocol Dequeuable {
    
    static var dequeuIdentifier: String { get }
    
}

extension Dequeuable where Self: UIView {
    
    static var dequeuIdentifier: String {
        return String(describing: self)
    }
    
}

extension UITableViewCell: Dequeuable { }

extension UICollectionViewCell: Dequeuable { }
