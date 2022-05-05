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
        if usernameInput.isValidUsername {
            showFollowersView.toggle()
        } else {
            alertItem = AlertContext.invalidUsernameInput
            showAlert.toggle()
        }
    }
}
