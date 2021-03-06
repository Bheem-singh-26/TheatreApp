//
//  MovieDetailViewController.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 11/7/18.
//  Copyright © 2018 Bheem Singh. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController, Storyboarded, Retryable, Transitionable, LoadingDisplayable {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var transitionContainerView: UIView!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var voteAverageView: VoteAverageView!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var optionsStackView: UIStackView!
    
    static var storyboardName: String = "MovieDetail"
    
    lazy var shareBarButtonItem: UIBarButtonItem = {
        let barButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareBarButtonAction(_:)))
        return barButtonItem
    }()
    
    lazy var favoriteBarButtonItem: FavoriteToggleBarButtonItem = {
        let barButtonItem = FavoriteToggleBarButtonItem()
        barButtonItem.target = self
        barButtonItem.action = #selector(favoriteButtonAction(_:))
        
        return barButtonItem
    }()

    var viewModel: MovieDetailViewModelProtocol?
    weak var coordinator: MovieDetailCoordinatorProtocol?

    // MARK: - LoadingDisplayable

    var loaderView: LoadingView = RadarView()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupBindables()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let viewModel = viewModel, !viewModel.startLoading.value else {
            return
        }
        viewModel.checkIfUserIsAuthenticated()
    }

    // MARK: - Private
    
    private func setupUI() {
        title = LocalizedStrings.movieDetailTitle.localized
        
        setupNavigationBar()
        transitionContainerView.setShadowBorder()
    }
    
    private func setupNavigationBar() {
        let backItem = UIBarButtonItem(title: "", style: .done, target: nil, action: nil)
        navigationItem.backBarButtonItem = backItem
        navigationItem.rightBarButtonItems = [shareBarButtonItem]
    }
    
    private func configureNavigationBar(isFavorite: Bool?) {
        if let isFavorite = isFavorite {
            favoriteBarButtonItem.toggle(to: isFavorite.intValue)
            navigationItem.rightBarButtonItems = [shareBarButtonItem, favoriteBarButtonItem]
        } else {
            navigationItem.rightBarButtonItems = [shareBarButtonItem]
        }
    }
    
    private func showErrorView(error: Error) {
        presentRetryView(with: error.localizedDescription,
                                   errorHandler: { [weak self] in
            self?.viewModel?.refreshMovieDetail()
        })
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        setupViewBindables()
        setupLoaderBindable()
        setupErrorBindables()
        setupFavoriteBindables()
        viewModel?.getMovieDetail()
    }
    
    private func setupViewBindables() {
        guard let viewModel = viewModel else { return }
        
        titleLabel.text = viewModel.title
        genreLabel.text = viewModel.genre
        releaseDateLabel.text = viewModel.releaseDate
        
        backdropImageView.setImage(with: viewModel.backdropURL)
        posterImageView.setImage(with: viewModel.posterURL)
        
        voteAverageView.voteValue = viewModel.voteAverage
        overviewLabel.text = viewModel.overview
        
        viewModel.showGenreName.bindAndFire({ [weak self] genreName in
            self?.genreLabel.text = genreName
        })
        
        configureOptionsStackView()
    }
    
    private func configureOptionsStackView() {
        guard let viewModel = viewModel, optionsStackView.arrangedSubviews.isEmpty else { return }
        let optionsViews = viewModel.options.map { MovieDetailOptionView(option: $0) }
        for optionView in optionsViews {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(optionAction(_:)))
            optionView.addGestureRecognizer(tapGesture)
            optionsStackView.addArrangedSubview(optionView)
        }
    }
    
    private func setupLoaderBindable() {
        viewModel?.startLoading.bind({ [weak self] start in
            start ? self?.showLoader() : self?.hideLoader()
        })
        viewModel?.updateMovieDetail = { [weak self] in
            self?.setupViewBindables()
            self?.hideRetryView()
        }
    }
    
    private func setupErrorBindables() {
        viewModel?.showErrorView.bind({ [weak self] error in
            guard let error = error else { return }
            self?.showErrorView(error: error)
        })
    }
    
    private func setupFavoriteBindables() {
        viewModel?.isFavorite.bind({ [weak self] isFavorite in
            guard let strongSelf = self else { return }
            strongSelf.configureNavigationBar(isFavorite: isFavorite)
        })
    }
    
    // MARK: - Selectors
    
    @objc func optionAction(_ sender: UITapGestureRecognizer) {
        guard let sender = sender.view as? MovieDetailOptionView else { return }
        let movieDetailOption = sender.option
        movieDetailOption.prepare(coordinator: coordinator)
    }
    
    // MARK: - Actions
    
    @IBAction func shareBarButtonAction(_ sender: Any) {
        guard let movieTitle = viewModel?.title else { return }
        let shareText = String(format: LocalizedStrings.movieDetailShareText.localized, movieTitle)
        let activityViewController = UIActivityViewController(activityItems: [shareText],
                                                              applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
    }
    
    @IBAction func favoriteButtonAction(_ sender: Any) {
        viewModel?.handleFavoriteMovie()
    }
    
}
