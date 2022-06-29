//
//  FollowerDetailView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 24.06.22.
//

import SwiftUI

struct UserDetailView: View {

    var body: some View {

        VStack {
            HStack {
                // user info
                AvatarImageView(imageURL: viewModel.selectedUser?.avatarUrl, imageWidth: 86, imageHeight: 86)
                VStack {
                    // VStack
                    // login
                    // name
                    // symbol and location
                }
            }
            // Text with the bio
            // section with GitHub Profile button
            // section with the Get Followers button
            // Text: GitHub since Jul 2014
        }

//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .overlay(GFMDismissButton(), alignment: .topTrailing)
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    GFMDismissButton()
//                }
//            }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView()
    }
}
