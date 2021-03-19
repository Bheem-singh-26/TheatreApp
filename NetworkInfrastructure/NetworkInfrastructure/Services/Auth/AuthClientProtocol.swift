//
//  AuthClientProtocol.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 12/23/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

protocol AuthClientProtocol {

    func getRequestToken(with readAccessToken: String,
                         completion: @escaping (Result<RequestTokenResult, APIError>) -> Void)

    func getAccessToken(with readAccessToken: String,
                        requestToken: String,
                        completion: @escaping (Result<AccessToken, APIError>) -> Void)

    func createSessionId(with accessToken: String,
                         completion: @escaping (Result<SessionResult, APIError>) -> Void)

}
