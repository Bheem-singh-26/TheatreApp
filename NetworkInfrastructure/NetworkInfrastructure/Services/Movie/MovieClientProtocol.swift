//
//  MovieClientProtocol.swift
//  NetworkInfrastructure
//
//  Created by Bheem Singh on 12/24/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

protocol MovieClientProtocol {

    func getUpcomingMovies(page: Int, completion: @escaping (Result<MovieResult?, APIError>) -> Void)

    func getPopularMovies(page: Int, completion: @escaping (Result<MovieResult?, APIError>) -> Void)

    func getTopRatedMovies(page: Int, completion: @escaping (Result<MovieResult?, APIError>) -> Void)
    
    func getSimilarMovies(page: Int, movieId: Int,
                          completion: @escaping (Result<MovieResult?, APIError>) -> Void)

    func getMoviesByGenre(page: Int, genreId: Int,
                          completion: @escaping (Result<MovieResult?, APIError>) -> Void)

    func searchMovies(searchText: String, includeAdult: Bool,
                      completion: @escaping (Result<MovieResult?, APIError>) -> Void)

    func getMovieDetail(with movieId: Int,
                        completion: @escaping (Result<MovieDetailResult, APIError>) -> Void)

    func getMovieVideos(with movieId: Int,
                        completion: @escaping (Result<VideoResult?, APIError>) -> Void)

    func getMovieReviews(page: Int, with movieId: Int,
                         completion: @escaping (Result<ReviewResult?, APIError>) -> Void)

    func getMovieCredits(with movieId: Int,
                         completion: @escaping (Result<CreditResult?, APIError>) -> Void)

    func getMovieAccountState(with movieId: Int, sessionId: String,
                              completion: @escaping (Result<MovieAccountStateResult?, APIError>) -> Void)

}
