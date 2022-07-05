//
//  FollowerDetailView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 24.06.22.
//

import SwiftUI

struct UserDetailView: View {

    @EnvironmentObject var viewModel: GFMViewModel

    var body: some View {

        VStack(spacing: 14) {
            VStack(alignment: .leading) {
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
            .padding(.top, 40)

            GFMInfoView(label1: "Public Repos", label2: "Public Gists", imageSymbol1: "folder", imageSymbol2: "text.alignleft", number1: UserMockData.mockUser.publicRepos, number2: UserMockData.mockUser.publicGists, buttonLabel: "GitHub Profile", buttonColor: .pink)

            GFMInfoView(label1: "Following", label2: "Followers", imageSymbol1: "heart", imageSymbol2: "person.3", number1: UserMockData.mockUser.publicRepos, number2: UserMockData.mockUser.publicGists, buttonLabel: "Get Followers", buttonColor: .green)

                Text("On GitHub since \(UserMockData.mockUser.createdAt)")
                    .foregroundColor(.secondary)
                    .font(.subheadline)

            Spacer()
        }
        .overlay(GFMDismissButton(), alignment: .topTrailing)
        .padding(12)

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
