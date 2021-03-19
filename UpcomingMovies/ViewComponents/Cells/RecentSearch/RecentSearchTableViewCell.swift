//
//  RecentSearchTableViewCell.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 11/7/18.
//  Copyright © 2018 Bheem Singh. All rights reserved.
//

import UIKit

final class RecentSearchTableViewCell: UITableViewCell {
    
    @IBOutlet weak var searchLabel: UILabel!
    
    static let identifier = "RecentSearchCell"
    
    var viewModel: RecentSearchCellViewModelProtocol? {
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
    
    fileprivate func setupUI() {
        setupSearchLabel()
    }
    
    fileprivate func setupSearchLabel() {
        searchLabel.font = FontHelper.Default.mediumLight
        searchLabel.textColor = ColorPalette.darkGray
    }
    
    fileprivate func setupBindables() {
        searchLabel.text = viewModel?.searchText
    }
    
}
