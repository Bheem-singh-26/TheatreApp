//
//  UpcomingMoviesWidget.swift
//  UpcomingMoviesWidgetExtension
//
//  Created by Bheem Singh on 11/25/20.
//  Copyright © 2020 Bheem Singh. All rights reserved.
//

import SwiftUI
import WidgetKit

struct UpcomingMoviesWidgetEntryView: View {

    var entry: Provider.Entry
    
    let gradientColors = [.white,
                          Color("UpcomingMoviesGradientColor"),
                          Color("UpcomingMoviesGradientColor")]
    
    let backgroundColor = Color("UpcomingMoviesBackgroundColor")
    
    var body: some View {
        SmallWidgetView(title: "Upcoming",
                        iconName: "play",
                        gradientColors: gradientColors,
                        backgroundColor: backgroundColor)
            .widgetURL(URL(string: "extension://upcoming"))
    }

}

struct UpcomingMoviesWidget: Widget {

    let kind: String = "UpcomingMoviesWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            UpcomingMoviesWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Upcoming movies")
        .description("Keep up to date with the latest releases")
        .supportedFamilies([.systemSmall])
    }
    
}
