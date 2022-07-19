//
//  Date+Ext.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 19.07.22.
//

import Foundation

extension Date {

    func convertToMonthDayYear() -> String {
        return self.formatted(.dateTime
            .year()
            .month(.abbreviated)
            .day()
            .locale(Locale(identifier: "en_US")))
    }
}
