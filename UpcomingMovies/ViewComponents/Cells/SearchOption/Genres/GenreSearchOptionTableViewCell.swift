//
//  GenreSearchOptionTableViewCell.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 1/15/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

final class GenreSearchOptionTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    var viewModel: GenreSearchOptionCellViewModelProtocol? {
        didSet {
            setupBindables()
        }
    }
    
    // MARK: - Lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        nameLabel.font = FontHelper.light(withSize: 14.0)
        nameLabel.textColor = ColorPalette.lightBlueColor
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        nameLabel.text = viewModel?.name
    }

}
