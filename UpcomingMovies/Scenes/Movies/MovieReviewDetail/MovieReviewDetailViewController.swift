//
//  MovieReviewDetailViewController.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 5/31/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import UIKit

class MovieReviewDetailViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var contentLabel: UILabel!
    
    static var storyboardName = "MovieDetail"
    
    var viewModel: MovieReviewDetailViewModelProtocol?
    weak var coordinator: MovieReviewDetailCoordinatorProtocol?
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupBindables()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        setupLabels()
    }
    
    private func setupLabels() {
        contentLabel.numberOfLines = 0
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        title = viewModel?.author
        contentLabel.text = viewModel?.content
    }
    
    // MARK: - Actions
    
    @IBAction func closeAction(_ sender: Any) {
        coordinator?.dismiss()
    }
    
}
