//
//  SearchView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 14.04.22.
//

import SwiftUI

struct SearchView: View {

    @FocusState private var focusedTextField: SearchFieldEnum?
    @StateObject var viewModel = GFMViewModel() // this view owns the viewModel

    var body: some View {
        // Will be deprecated in iOS16 -> https://developer.apple.com/documentation/swiftui/navigationview?changes=latest_minor
        // iOS16: NavigationStack -> https://www.youtube.com/watch?v=4obxmYn2AoI
        NavigationView {
            VStack {
                NavigationLink("", destination: FollowersView(), isActive: $viewModel.showFollowersView)
                Image("gh-logo")
                    .resizable()
                    .frame(width: 240, height: 240)
                GFMTextField(placeholderText: "Enter Username", textInput: $viewModel.usernameInput, focusedTextField: $focusedTextField)
                    .padding(.top, 20)
                Spacer()
                GFMButton(title: "Get Followers") {
                    viewModel.flushFollowers()
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
        // attach the viewModel to the NavigationView so that it will be available in its child views (NavigationLink)
        }.environmentObject(viewModel)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
