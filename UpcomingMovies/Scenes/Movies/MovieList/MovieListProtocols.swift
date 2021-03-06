//
//  MovieListProtocols.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/28/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import UIKit
import UpcomingMoviesDomain

protocol MovieListViewModelProtocol {

    var viewState: Bindable<SimpleViewState<Movie>> { get set }
    var startLoading: Bindable<Bool> { get set }
    
    var needsPrefetch: Bool { get }
    
    var displayTitle: String? { get set }
    var movieCells: [MovieCellViewModelProtocol] { get }

    func getMovies()
    func refreshMovies()
    
    func selectedMovie(at index: Int) -> Movie
    
}

protocol MoviesInteractorProtocol {
    
    func getMovies(page: Int, completion: @escaping (Result<[UpcomingMoviesDomain.Movie], Error>) -> Void)
    
}

protocol MovieListCoordinatorProtocol: class {
    
    func showMovieDetail(for movie: Movie)
    
}
