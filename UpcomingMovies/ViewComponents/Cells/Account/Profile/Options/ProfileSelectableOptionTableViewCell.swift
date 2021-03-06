//
//  ProfileSelectableOptionTableViewCell.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 3/24/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

class ProfileSelectableOptionTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titlelabel: UILabel!
    
    var viewModel: ProfileSelectableOptionCellViewModelProtocol? {
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
        titlelabel.font = FontHelper.light(withSize: 16.0)
        titlelabel.textColor = ColorPalette.lightBlueColor
    }
    
    // MARK: - Reactive Behaviour
    
    private func setupBindables() {
        titlelabel.text = viewModel?.title
    }
    
}
