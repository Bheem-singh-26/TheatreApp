//
//  UpcomingMoviesViewModel.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 11/5/18.
//  Copyright © 2018 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

final class UpcomingMoviesViewModel: UpcomingMoviesViewModelProtocol {

    // MARK: - Dependencies
    
    private let interactor: MoviesInteractorProtocol

    // MARK: - Reactive properties
    
    private (set) var viewState: Bindable<SimpleViewState<Movie>> = Bindable(.initial)
    private (set) var startLoading: Bindable<Bool> = Bindable(false)
    
    // MARK: - Computed properties
    
    private var movies: [Movie] {
        return viewState.value.currentEntities
    }
    
    var movieCells: [UpcomingMovieCellViewModelProtocol] {
        return movies.compactMap { UpcomingMovieCellViewModel($0) }
    }
    
    var needsPrefetch: Bool {
        return viewState.value.needsPrefetch
    }
    
    // MARK: - Initializers
    
    init(interactor: MoviesInteractorProtocol) {
        self.interactor = interactor
    }
    
    // MARK: - UpcomingMoviesViewModelProtocol
    
    func getMovies() {
        let showLoader = viewState.value.isInitialPage
        fetchMovies(currentPage: viewState.value.currentPage, showLoader: showLoader)
    }
    
    func refreshMovies() {
        self.fetchMovies(currentPage: 1, showLoader: false)
    }

    // MARK: - Private
    
    private func fetchMovies(currentPage: Int, showLoader: Bool = false) {
        startLoading.value = showLoader
        interactor.getMovies(page: currentPage, completion: { result in
            self.startLoading.value = false
            switch result {
            case .success(let movies):
                self.viewState.value = self.processMovieResult(movies,
                                                               currentPage: currentPage,
                                                               currentMovies: self.movies)
            case .failure(let error):
                self.viewState.value = .error(error)
            }
        })
    }
    
    private func processMovieResult(_ movies: [Movie], currentPage: Int,
                                    currentMovies: [Movie]) -> SimpleViewState<Movie> {
        var allMovies = currentPage == 1 ? [] : currentMovies
        allMovies.append(contentsOf: movies)
        guard !allMovies.isEmpty else { return .empty }
        
        return movies.isEmpty ? .populated(allMovies) : .paging(allMovies, next: currentPage + 1)
    }
    
    func movie(for index: Int) -> Movie {
        return movies[index]
    }
    
}
