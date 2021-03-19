//
//  LocalDataSource.swift
//  CoreDataInfrastructure
//
//  Created by Bheem Singh on 11/2/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesData

final public class LocalDataSource: LocalDataSourceProtocol {
    
    private let coreDataStack: CoreDataStackProtocol

    // MARK: - Initializers
    
    public init(appGroupExtensions: [String] = []) {
        self.coreDataStack = CoreDataStack.shared
        self.coreDataStack.setExtensionPersistentStoreDescriptions(appGroupExtensions)
    }

    // MARK: - LocalDataSourceProtocol

    public func genreDataSource() -> GenreLocalDataSourceProtocol {
        let store: PersistenceStore<CDGenre> = PersistenceStore(self.coreDataStack.mainContext)
        return  GenreLocalDataSource(store: store)
    }
    
    public func movieVisitDataSource() -> MovieVisitLocalDataSourceProtocol {
        let store: PersistenceStore<CDMovieVisit> = PersistenceStore(self.coreDataStack.mainContext)
        return MovieVisitLocalDataSource(store: store)
    }
    
    public func movieSearchDataSource() -> MovieSearchLocalDataSourceProtocol {
        let store: PersistenceStore<CDMovieSearch> = PersistenceStore(self.coreDataStack.mainContext)
        return MovieSearchLocalDataSource(store: store)
    }
    
    public func userDataSource() -> UserLocalDataSourceProtocol {
        let store: PersistenceStore<CDUser> = PersistenceStore(self.coreDataStack.mainContext)
        return UserLocalDataSource(store: store)
    }
    
}
