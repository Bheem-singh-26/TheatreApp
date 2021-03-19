//
//  String+Localized.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 7/3/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation

extension String {
    
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self,
                                 tableName: tableName,
                                 value: self,
                                 comment: "")
    }
    
}
