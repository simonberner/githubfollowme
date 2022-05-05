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
//    @State private var usernameInput = ""
//    @State private var showFollowersView = false

    var body: some View {
        VStack(spacing: 20) {
//            Spacer()
            Image("gh-logo")
                .resizable()
//                .scaledToFit()
//                .padding()
//                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240)
                .padding(.top, 40)
            GFMTextField(placeholderText: "Enter Username", textInput: $viewModel.usernameInput, focusedTextField: $focusedTextField)
                .padding(.top, 40)
            Spacer()
            GFMButton(title: "Get Followers") {
                viewModel.checkValidUsernameInput()
            }
            .padding(.bottom, 80)
        }
        .onTapGesture {
            focusedTextField = nil
        }
        .sheet(isPresented: $viewModel.showFollowersView) {
            FollowersView()
        }
        .alert(Text(viewModel.alertItem?.title ?? ""), isPresented: $viewModel.showAlert) {
            Button(viewModel.alertItem?.buttonText ?? "", role: .cancel) {}
        } message: {
            Text(viewModel.alertItem?.message ?? "")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
