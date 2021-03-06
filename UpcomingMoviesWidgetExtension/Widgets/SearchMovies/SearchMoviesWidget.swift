//
//  SearchMoviesWidget.swift
//  UpcomingMoviesWidgetExtension
//
//  Created by Bheem Singh on 11/25/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import SwiftUI
import WidgetKit

struct SearchMoviesWidgetEntryView: View {

    var entry: Provider.Entry

    let gradientColors = [.white,
                          Color("SearchMoviesGradientColor"),
                          Color("SearchMoviesGradientColor")]

    let backgroundColor = Color("SearchMoviesBackgroundColor")

    var body: some View {
        SmallWidgetView(title: "Search",
                        iconName: "magnifyingglass",
                        gradientColors: gradientColors,
                        backgroundColor: backgroundColor)
            .widgetURL(URL(string: "extension://search"))
    }
    
}

struct SearchMoviesWidget: Widget {

    let kind: String = "SearchMoviesWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            SearchMoviesWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Search movies")
        .description("Search your favorite movies")
        .supportedFamilies([.systemSmall])
    }

}
