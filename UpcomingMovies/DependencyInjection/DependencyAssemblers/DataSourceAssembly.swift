//
//  DataSourceAssembly.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 9/12/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesData
import CoreDataInfrastructure
import NetworkInfrastructure
import Swinject

final class DataSourceAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(LocalDataSourceProtocol.self) { _ in
            return LocalDataSource(appGroupExtensions: AppGroup.allCasesIdentifiers)
        }
        container.register(RemoteDataSourceProtocol.self) { _ in
            return RemoteDataSource()
        }
    }
    
}
