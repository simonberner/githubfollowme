//
//  GFMViewModel.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 05.05.22.
//

import Foundation

// MainActor: anything in this class will be rerouted to the main (UI) queue/thread
@MainActor final class GFMViewModel: ObservableObject {

    @Published var usernameInput = ""
    @Published var alertItem: AlertItem?
    @Published var showAlert = false
    @Published var showFollowersView = false
    @Published var followers: [Follower] = []
    @Published var followersSnapshot: [Follower] = []
    @Published var filteredFollowers: [Follower] = []
    @Published var hasMoreFollowers = true
    @Published var page = 1
    @Published var pageSnapshot = 1

    func getFollowers() {
        if isValidUsername() {
            Task {
                do {
                    // get the first/next 100 followers
                    let newFollowers = try await NetworkManager.shared.getFollowers(for: usernameInput, page: page)
                    followers.append(contentsOf: newFollowers)
                    showFollowersView = true
                    print("New Followers count = \(newFollowers.count)")
                    print("Total Followers count = \(followers.count)")
                    print("Page count = \(page)")
                    print("New followers: \(newFollowers)")

                    // if the user has less than 100 newFollowers, there are no more followers left to fetch
                    if newFollowers.count < 100 {
                        hasMoreFollowers = false
                        print("No more new followers to fetch!")
                        return
                    }
                    // if the user has more followers increment the paging
                    page += 1
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

    func resetFollowers() {
        followers.removeAll()
        followers = followersSnapshot
        followersSnapshot.removeAll()
        filteredFollowers.removeAll()
        // TODO: handle which followers have we already fetched?
//        followers = followersSnapshot
//        filteredFollowers = followersSnapshot
        hasMoreFollowers = true
        page = pageSnapshot
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
