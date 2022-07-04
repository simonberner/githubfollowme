//
//  FollowerDetailView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 24.06.22.
//

import SwiftUI

struct UserDetailView: View {

//    @EnvironmentObject var viewModel: GFMViewModel

    var body: some View {

        VStack(alignment: .leading, spacing: 14) {
            HStack {
                AvatarImageView(imageURL: URL(string: UserMockData.mockUser.avatarUrl), imageWidth: 86, imageHeight: 86)
                VStack(alignment: .leading, spacing: 3) {
                    Text(UserMockData.mockUser.login)
                        .bold()
                        .font(.title)
                    Text(UserMockData.mockUser.name ?? "")
                        .foregroundColor(.secondary)
                    Label {
                        Text(UserMockData.mockUser.location ?? "")
                    } icon: {
                        Image(systemName: "mappin.and.ellipse")
                    }
                    .foregroundColor(.secondary)
                }
            }
            Text(UserMockData.mockUser.bio ?? "")
                .font(.caption)
                .lineLimit(3)
                .foregroundColor(.secondary)
        }
        .padding(12)

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
