//
//  MovieDetailViewModel.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 11/7/18.
//  Copyright © 2018 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class MovieDetailViewModel: MovieDetailViewModelProtocol {

    // MARK: - Dependencies
    
    private let interactor: MovieDetailInteractorProtocol
    private let factory: MovieDetailFactoryProtocol

    // MARK: - Reactive properties

    private (set) var startLoading: Bindable<Bool> = Bindable(false)
    private (set) var isFavorite: Bindable<Bool?> = Bindable(false)
    private (set) var showErrorView: Bindable<Error?> = Bindable(nil)
    private (set) var showGenreName: Bindable<String> = Bindable("-")

    var updateMovieDetail: (() -> Void)?

    // MARK: - Properties
    
    var id: Int!
    var title: String!
    var genre: String?
    var releaseDate: String?
    var overview: String?
    var voteAverage: Double?
    var posterURL: URL?
    var backdropURL: URL?

    var needsFetch = false
    
    // MARK: - Initializers

    init(_ movie: Movie,
         interactor: MovieDetailInteractorProtocol,
         factory: MovieDetailFactoryProtocol) {
        self.interactor = interactor
        self.factory = factory
        
        setupMovie(movie)
        checkIfUserIsAuthenticated()
    }
    
    init(id: Int, title: String,
         interactor: MovieDetailInteractorProtocol,
         factory: MovieDetailFactoryProtocol) {
        self.id = id
        self.title = title
        self.interactor = interactor
        self.factory = factory
        
        self.needsFetch = true
    }
    
    // MARK: - Computed properties
    
    var options: [MovieDetailOption] {
        return factory.options
    }
    
    // MARK: - Private
    
    private func setupMovie(_ movie: Movie) {
        id = movie.id
        title = movie.title
        
        releaseDate = movie.releaseDate
        voteAverage = movie.voteAverage
        overview = movie.overview
        posterURL = movie.posterURL
        backdropURL = movie.backdropURL
        
        getMovieGenreName(for: movie.genreIds?.first)
        saveVisitedMovie()
    }
    
    private func getMovieGenreName(for genreId: Int?) {
        guard let genreId = genreId else { return }
        interactor.findGenre(with: genreId, completion: { [weak self] result in
            guard let strongSelf = self else { return }
            switch result {
            case .success(let genre):
                strongSelf.showGenreName.value = genre?.name ?? "-"
            case .failure:
                break
            }
        })
    }
    
    // MARK: - Networking
    
    func getMovieDetail() {
        fetchMovieDetail(showLoader: true)
    }
    
    func refreshMovieDetail() {
        fetchMovieDetail(showLoader: false)
    }
    
    private func fetchMovieDetail(showLoader: Bool = true) {
        guard needsFetch else { return }
        startLoading.value = showLoader
        interactor.getMovieDetail(for: id, completion: { result in
            switch result {
            case .success(let movie):
                self.setupMovie(movie)
                self.updateMovieDetail?()
                self.checkIfUserIsAuthenticated()
            case .failure(let error):
                self.startLoading.value = false
                self.showErrorView.value = error
            }
        })
    }
    
    func saveVisitedMovie() {
        interactor.saveMovieVisit(with: id, title: title, posterPath: posterURL?.absoluteString)
    }
    
    // MARK: - User Authentication
    
    func checkIfUserIsAuthenticated() {
        let isUserSignedIn = interactor.isUserSignedIn()
        if isUserSignedIn {
            checkIfMovieIsFavorite()
        } else {
            startLoading.value = false
            isFavorite.value = nil
        }
    }
    
    // MARK: - Favorites
    
    private func checkIfMovieIsFavorite() {
        interactor.isMovieInFavorites(for: id, completion: { result in
            self.startLoading.value = false
            switch result {
            case .success(let isFavorite):
                self.isFavorite.value = isFavorite
            case .failure(let error):
                guard self.needsFetch else { return }
                self.showErrorView.value = error
            }
        })
    }
    
    func handleFavoriteMovie() {
        guard let isFavorite = isFavorite.value else { return }
        interactor.markMovieAsFavorite(movieId: id, favorite: !isFavorite, completion: { result in
            switch result {
            case .success:
                self.isFavorite.value = !isFavorite
            case .failure(let error):
                self.showErrorView.value = error
            }
        })
    }
    
}
