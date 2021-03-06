//
//  MovieVideosProtocols.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 6/28/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import Foundation
import UpcomingMoviesDomain

protocol MovieVideosViewModelProtocol {
    
    var movieId: Int { get set }
    var movieTitle: String { get set }
    
    var viewState: Bindable<SimpleViewState<Video>> { get }
    var startLoading: Bindable<Bool> { get }
    
    var videoCells: [MovieVideoCellViewModelProtocol] { get }
    
    func videoURL(at index: Int) -> URL?
    func getMovieVideos(showLoader: Bool)
    
}

protocol MovieVideosInteractorProtocol {
    
    func getMovieVideos(for movieId: Int, page: Int?,
                        completion: @escaping (Result<[Video], Error>) -> Void)
    
}

protocol MovieVideosCoordinatorProtocol: class {}
