//
//  GenreLocalDataSource.swift
//  CoreDataInfrastructure
//
//  Created by Bheem Singh on 11/2/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UpcomingMoviesDomain
import UpcomingMoviesData

final class GenreLocalDataSource: GenreLocalDataSourceProtocol {
    
    private let store: PersistenceStore<CDGenre>
    
    var didUpdateGenre: (() -> Void)?

    // MARK: - Initializers
    
    init(store: PersistenceStore<CDGenre>) {
        self.store = store
        self.store.configureResultsContoller(sortDescriptors: CDGenre.defaultSortDescriptors)
        self.store.delegate = self
    }

    // MARK: - GenreLocalDataSourceProtocol
    
    func saveGenres(_ genres: [Genre]) {
        genres.forEach { store.saveGenre($0) }
    }
    
    func find(with id: Int) -> Genre? {
        return store.find(with: id)?.asDomain()
    }
    
    func findAll() -> [Genre] {
        return store.findAll().map { $0.asDomain() }
    }
    
}

// MARK: - PersistenceStoreDelegate

extension GenreLocalDataSource: PersistenceStoreDelegate {
    
    func persistenceStore(willUpdateEntity shouldPrepare: Bool) {}
    
    func persistenceStore(didUpdateEntity update: Bool) {
        didUpdateGenre?()
    }
    
}
