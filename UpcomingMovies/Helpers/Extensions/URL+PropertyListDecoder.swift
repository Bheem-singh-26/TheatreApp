//
//  URL+PropertyListDecoder.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 2/6/21.
//  Copyright © 2021 Bheem Singh. All rights reserved.
//

import Foundation

extension URL {

    func decodePropertyList<T: Decodable>() throws -> T {
        let data = try Data(contentsOf: self)
        let decoder = PropertyListDecoder()
        return try decoder.decode(T.self, from: data)
    }

}
