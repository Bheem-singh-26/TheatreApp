//
//  LoaderDisplayable.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 2/15/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

protocol LoadingDisplayable: class {

    var loaderView: LoadingView { get }

    func showLoader(in view: UIView)
    func hideLoader()

}

extension LoadingDisplayable {

    func showLoader(in view: UIView) {
        DispatchQueue.main.async {
            self.loaderView.show(in: view, animated: false, completion: nil)
            self.loaderView.startLoading()
        }
    }

    func hideLoader() {
        DispatchQueue.main.async {
            self.loaderView.hide(animated: true, completion: { _ in
                self.loaderView.stopLoading()
            })
        }
    }

}

extension LoadingDisplayable where Self: UIViewController {

    func showLoader() {
        showLoader(in: self.view)
    }

}
