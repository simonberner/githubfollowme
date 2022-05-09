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
     - can include a dash –
     - max 39 chars long
     - no consecutive dashes –– (two or more dashes in a row)
     - no dash – at the start or end

     NSPredicate: https://nspredicate.xyz/
     Test the regex with: https://regexr.com/
     */
    var isValidUsername: Bool {
        let usernameFormat = "^[a-z/d](?:[a-z/d]|-(?=[a-z/d])){0,38}$"
        let usernamePredicate = NSPredicate(format: "SELF MATCHES %@", usernameFormat)
        return usernamePredicate.evaluate(with: self)
    }
}
