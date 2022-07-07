//
//  DateFormatter+Ext.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 06.07.22.
//

import Foundation

extension DateFormatter {
    // computed property (https://www.avanderlee.com/swift/computed-property/#computed-properties-inside-an-extension)
    // creating a specific static formatter (https://sarunw.com/posts/how-to-use-dateformatter/#caching)
    static var gitHubSinceDateFormatter: DateFormatter {
        // implicit get {}
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
//        dateFormatter.dateFormat = "MM-yyyy"
        dateFormatter.dateStyle = .medium
        return dateFormatter
    }
}
