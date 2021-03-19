//
//  UpcomingMoviesViewFactory.swift
//  UpcomingMovies
//
//  Created by Bheem Singh on 7/5/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import UIKit

final class UpcomingMoviesViewFactory {
    
    class func makeGridBarButtonItem() -> ToggleBarButtonItem {
        let preview = ToggleBarButtonItemContent(display: .right(#imageLiteral(resourceName: "List")),
                                                 accessibilityLabel: LocalizedStrings.expandMovieCellsHint.localized)
        let detail = ToggleBarButtonItemContent(display: .right(#imageLiteral(resourceName: "Grid")),
                                                accessibilityLabel: LocalizedStrings.collapseMovieCellsHint.localized)
        
        return ToggleBarButtonItem(contents: [preview, detail])
    }
    
}
