//
//  ProfileSignOutTableViewCell.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 4/19/19.
//  Copyright © 2019 Bheem Singh. All rights reserved.
//

import UIKit

class ProfileSignOutTableViewCell: UITableViewCell {
    
    // MARK: - Initializers

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    // MARK: - Private
    
    private func setupUI() {
        textLabel?.text = LocalizedStrings.signOut.localized
        textLabel?.textAlignment = .center
        textLabel?.textColor = ColorPalette.redColor
        textLabel?.font = FontHelper.light(withSize: 16.0)
    }
    
}
