//
//  SavedMovieCollectionViewCell.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 3/3/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit
import CollectionViewSlantedLayout

class SavedMovieCollectionViewCell: CollectionViewSlantedCell {
    
    @IBOutlet weak var backdropImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    var viewModel: SavedMovieCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }
    
    // MARK: - Lifecycle
    
    override func prepareForReuse() {
        super.prepareForReuse()
        backdropImageView.cancelImageDownload()
        backdropImageView.image = nil
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        setupLabels()
    }
    
    private func setupLabels() {
        titleLabel.font = FontHelper.bold(withSize: 18.0)
        titleLabel.textColor = ColorPalette.whiteColor
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        guard let viewModel = viewModel else { return }
        titleLabel.text = viewModel.title
        backdropImageView.setImage(with: viewModel.backdropURL)
    }

}
