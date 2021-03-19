//
//  ConfigurationClientProtocol.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 12/23/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

protocol ConfigurationClientProtocol {

    func getImagesConfiguration(completion: @escaping (Result<ImagesConfigurationResult, APIError>) -> Void)

}
