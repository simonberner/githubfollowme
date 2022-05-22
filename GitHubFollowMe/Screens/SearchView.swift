//
//  SearchView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 14.04.22.
//

import SwiftUI

struct SearchView: View {

    @FocusState private var focusedTextField: SearchFieldEnum?
    @StateObject var viewModel = GFMViewModel()

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Text("Search"), isActive: $viewModel.showFollowersView) { FollowersView() }
                Image("gh-logo")
                    .resizable()
                    .frame(width: 240, height: 240)
                GFMTextField(placeholderText: "Enter Username", textInput: $viewModel.usernameInput, focusedTextField: $focusedTextField)
                    .padding(.top, 20)
                Spacer()
                GFMButton(title: "Get Followers") {
                    viewModel.getFollowers()
                }
                .padding(.bottom, 60)
            }
            .onTapGesture {
                focusedTextField = nil
            }
            .alert(Text(viewModel.alertItem?.title ?? ""), isPresented: $viewModel.showAlert) {
                Button(viewModel.alertItem?.buttonText ?? "", role: .cancel) {}
            } message: {
                Text(viewModel.alertItem?.message ?? "")
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
