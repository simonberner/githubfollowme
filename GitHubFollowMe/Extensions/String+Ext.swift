//
//  String+Ext.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 03.05.22.
//

import Foundation

extension String {

    /**
     regex for a valid GitHub username:
     - alphanumeric
     - single hyphens -
     - max 39 chars long
     - no consecutive hyphens -- (two or more hyphens in a row)
     - no hyphen at the beginning or end
     (Validation message from GitHub: Username may only contain alphanumeric characters or single hyphens, and cannot begin or end with a hyphen.)

     NSPredicate: https://nspredicate.xyz/
     Test the regex with: https://regexr.com/
     */
    var isValidUsername: Bool {
        let usernameFormat = "^[a-z/d](?:[a-z/d]|-(?=[a-z/d])){0,38}$"
        let usernamePredicate = NSPredicate(format: "SELF MATCHES %@", usernameFormat)
        return usernamePredicate.evaluate(with: self)
    }

    /// Formats the GitHub profile 'createdAt' date string
    /// - Returns: abbreviated en_US date string with month, day and year
    func formatDate() -> String {
        let expectedFormat = Date.ISO8601FormatStyle()
        let date = try? Date(self, strategy: expectedFormat)
//        let formattedDate = date?.formatted(date: .abbreviated, time: .omitted) ?? "nil"
        // or in a more customised way:
        let formattedDate = date?.formatted(.dateTime
            .year()
            .month(.abbreviated)
            .day()
            .locale(Locale(identifier: "en_US"))) ?? "nil"
        return formattedDate
    }
}
