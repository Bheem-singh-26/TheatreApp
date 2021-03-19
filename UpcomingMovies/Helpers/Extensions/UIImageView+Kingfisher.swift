//
//  UIImageView+Kingfisher.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 10/13/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit
import Kingfisher

extension UIImageView {
    
    func setImage(with url: URL?) {
        kf.indicatorType = .activity
        kf.setImage(with: url)
    }

    func cancelImageDownload() {
        kf.cancelDownloadTask()
    }
    
}
