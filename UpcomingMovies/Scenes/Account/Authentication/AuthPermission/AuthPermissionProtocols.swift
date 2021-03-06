//
//  AuthPermissionProtocols.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/27/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import WebKit

protocol AuthPermissionViewModelProtocol {
    
    var authPermissionURLRequest: URLRequest? { get }
    
}

protocol AuthPermissionCoordinatorProtocol: Coordinator {
    
    func dismiss(completion: (() -> Void)?)
    func didDismiss()
    
}

protocol AuthPermissionWebViewNavigationDelegate: class, WKNavigationDelegate {
    
    var didFinishNavigation: () -> Void { get set }
    
}
