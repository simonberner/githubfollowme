//
//  Alert.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 05.05.22.
//

import Foundation

struct AlertItem {
    let title: String
    let message: String
    let buttonText = "OK"
}

// Creating the specific alert items
struct AlertContext {

    static let invalidUsernameInput = AlertItem(title: "⚠️ Invalid username",
                                                message: "Please enter a valid GitHub username.")
    static let noUsername = AlertItem(title: "⚠️ Empty username",
                                                message: "Please enter a valid GitHub username. We need to know who to look for.")
}
