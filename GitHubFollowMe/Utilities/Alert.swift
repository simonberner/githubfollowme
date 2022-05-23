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
    static let invalidURL = AlertItem(title: "⚠️ Invalid URL",
                                      message: "There is an issue connecting to GitHub. Please check your internet connection.")
    static let invalidData = AlertItem(title: "⚠️ Invalid Data",
                                      message: "The Data received from GitHub is invalid. Please check the username and try again.")
    static let invalidResponse = AlertItem(title: "⚠️ Invalid Response",
                                      message: "Invalid response from GitHub. Please check the username and try again.")
    static let offline = AlertItem(title: "⚠️ Offline?",
                                      message: "There is an issue connecting to GitHub. Please check your internet connection and try again.")
}
