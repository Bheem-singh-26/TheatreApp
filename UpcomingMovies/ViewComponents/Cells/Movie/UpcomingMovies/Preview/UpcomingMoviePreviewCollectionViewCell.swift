//
//  UpcomingMoviePreviewCollectionViewCell.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 1/24/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

final class UpcomingMoviePreviewCollectionViewCell: UICollectionViewCell, UpcomingMovieCollectionViewCellProtocol {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    var viewModel: UpcomingMovieCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }
    
    // MARK: - Lifecycle
    
    override func prepareForReuse() {
        super.prepareForReuse()
        posterImageView.cancelImageDownload()
        posterImageView.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        isAccessibilityElement = true
        
        titleLabel.textColor = ColorPalette.whiteColor
        titleLabel.numberOfLines = 0
        titleLabel.font = FontHelper.semiBold(withSize: 18.0)
        titleLabel.text = ""
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        guard let viewModel = viewModel else { return }
        accessibilityLabel = viewModel.title
        if let posterURL = viewModel.posterURL {
            posterImageView.setImage(with: posterURL)
        } else {
            posterImageView.backgroundColor = .darkGray
            titleLabel.text = viewModel.title
        }
    }
    
}
