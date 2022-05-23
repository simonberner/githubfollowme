//
//  GFMViewModel.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 05.05.22.
//

import Foundation

@MainActor final class GFMViewModel: ObservableObject {

    @Published var usernameInput = ""
    @Published var alertItem: AlertItem?
    @Published var showAlert = false
    @Published var showFollowersView = false
    @Published var followers: [Follower] = []

    func getFollowers() {
        if isValidUsername() {
            Task {
                do {
                    followers = try await NetworkManager.shared.getFollowers(for: usernameInput, page: 1)
                    showFollowersView.toggle()
                    print("Followers.count = \(followers.count)")
                    print(followers)
                } catch {
                    if let gfmError = error as? GFMError {
                        switch gfmError {
                        case .invalidURL:
                                alertItem = AlertContext.invalidURL
                                showAlert.toggle()
                        case .invalidResponse:
                                alertItem = AlertContext.invalidResponse
                                showAlert.toggle()
                        case .invalidData:
                                alertItem = AlertContext.invalidData
                                showAlert.toggle()
                        case .offline:
                                alertItem = AlertContext.offline
                                showAlert.toggle()
                        }
                    }
                }
            }
        }
    }

    private func isValidUsername() -> Bool {
        if usernameInput == "" {
            alertItem = AlertContext.noUsername
            showAlert.toggle()
            return false
        } else if usernameInput.isValidUsername {
            return true
        } else {
            alertItem = AlertContext.invalidUsernameInput
            showAlert.toggle()
            return false
        }
    }
}
