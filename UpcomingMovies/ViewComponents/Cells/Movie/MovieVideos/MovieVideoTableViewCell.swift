//
//  MovieVideoTableViewCell.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 2/9/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

final class MovieVideoTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var previewImageView: UIImageView!
    
    var viewModel: MovieVideoCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }
    
    // MARK: - Lifecycle
    
    override func prepareForReuse() {
        super.prepareForReuse()
        previewImageView.cancelImageDownload()
        previewImageView.image = nil
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        nameLabel.font = FontHelper.light(withSize: 16.0)
        nameLabel.textColor = ColorPalette.Label.defaultColor
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        guard let viewModel = viewModel else { return }
        nameLabel.text = viewModel.name
        previewImageView.setImage(with: viewModel.thumbnailURL)
    }

}
