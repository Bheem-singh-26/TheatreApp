//
//  ProfileFactory.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 7/18/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation

final class ProfileFactory: ProfileFactoryProtocol {
    
    var sections: [ProfileSection] {
        return [
            .accountInfo,
            .collections,
            .groups,
            .signOut
        ]
    }
    
    var collectionOptions: [ProfileCollectionOption] {
        return [.favorites, .watchlist]
    }
    
    var groupOptions: [ProfileGroupOption] {
        return [.customLists]
    }
    
    var configurationOptions: [ProfileConfigurationOption] {
        return []
    }
    
}
