//
//  GFMViewModel.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 05.05.22.
//

import Foundation

final class GFMViewModel: ObservableObject {

    @Published var usernameInput = ""
    @Published var alertItem: AlertItem?
    @Published var showAlert = false
    @Published var showFollowersView = false

    func checkValidUsernameInput() {
        // TODO: can we improve this?
        if usernameInput == "" {
            alertItem = AlertContext.noUsername
            showAlert.toggle()
        } else if usernameInput.isValidUsername {
            showFollowersView.toggle()
        } else {
            alertItem = AlertContext.invalidUsernameInput
            showAlert.toggle()
        }
    }
}
