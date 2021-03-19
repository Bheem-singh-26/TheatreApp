//
//  LoadingView.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 2/28/21.
//  Copyright © 2021 Bheem Singh. All rights reserved.
//

import UIKit

protocol LoadingView: Displayable {

    func startLoading()
    func stopLoading()

}
