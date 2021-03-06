//
//  MovieDetailProtocols.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/28/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieDetailViewModelProtocol {
    
    var id: Int! { get set }
    var title: String! { get set }
    var genre: String? { get set }
    var releaseDate: String? { get set }
    var overview: String? { get set }
    var voteAverage: Double? { get set }
    var posterURL: URL? { get set }
    var backdropURL: URL? { get set }
    
    var options: [MovieDetailOption] { get }
    
    var updateMovieDetail: (() -> Void)? { get set }
    var needsFetch: Bool { get set }
    
    var startLoading: Bindable<Bool> { get }
    var isFavorite: Bindable<Bool?> { get }
    var showErrorView: Bindable<Error?> { get }
    var showGenreName: Bindable<String> { get }
    
    func getMovieDetail()
    func refreshMovieDetail()
    
    func saveVisitedMovie()
    func checkIfUserIsAuthenticated()
    func handleFavoriteMovie()
    
}

protocol MovieDetailInteractorProtocol {
    
    func isUserSignedIn() -> Bool
    
    func findGenre(with id: Int, completion: @escaping (Result<Genre?, Error>) -> Void)
    func getMovieDetail(for movieId: Int, completion: @escaping (Result<Movie, Error>) -> Void)
    
    func markMovieAsFavorite(movieId: Int, favorite: Bool, completion: @escaping (Result<Bool, Error>) -> Void)
    func isMovieInFavorites(for movieId: Int, completion: @escaping (Result<Bool, Error>) -> Void)
    
    func saveMovieVisit(with id: Int, title: String, posterPath: String?)
    
}

protocol MovieDetailFactoryProtocol {
    
    var options: [MovieDetailOption] { get }
    
}

protocol MovieDetailCoordinatorProtocol: class {
    
    func showMovieVideos()
    func showMovieCredits()
    func showMovieReviews()
    func showSimilarMovies()
    
}
