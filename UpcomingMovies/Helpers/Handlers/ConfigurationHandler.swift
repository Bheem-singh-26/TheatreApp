//
//  ConfigurationHandler.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 5/24/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol ConfigurationHandlerProtocol {
    
    var regularImageBaseURLString: String { get }
    var backdropImageBaseURLString: String { get }
    
    func setConfiguration(_ configuration: Configuration)
    
}

class ConfigurationHandler: ConfigurationHandlerProtocol {
    
    private var imageConfiguration: ImageConfigurationHandler?
    
    // MARK: - ConfigurationHandlerProtocol
    
    var regularImageBaseURLString: String {
        guard !isTesting() else {
            return ImageConfigurationHandler.Constants.defaultRegularImageBaseURLString
        }
        return imageConfiguration?.regularImageBaseURLString ?? ImageConfigurationHandler.Constants.defaultRegularImageBaseURLString
    }
    
    var backdropImageBaseURLString: String {
        guard !isTesting() else {
            return ImageConfigurationHandler.Constants.defaultBackdropImageBaseURLString
        }
        return imageConfiguration?.backdropImageBaseURLString ??  ImageConfigurationHandler.Constants.defaultBackdropImageBaseURLString
    }
    
    func setConfiguration(_ configuration: Configuration) {
        self.imageConfiguration = ImageConfigurationHandler(configuration: configuration)
    }
    
    // MARK: - XCTest
    
    private func isTesting() -> Bool {
        return NSClassFromString("XCTest") != nil
    }
    
}
