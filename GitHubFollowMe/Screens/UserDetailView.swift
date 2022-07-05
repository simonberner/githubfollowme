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
                    AvatarImageView(imageURL: URL(string: viewModel.selectedUser?.avatarUrl ?? ""), imageWidth: 86, imageHeight: 86)
                    VStack(alignment: .leading, spacing: 3) {
                        Text(viewModel.selectedUser?.login ?? "noLoginName")
                            .bold()
                            .font(.title)
                        Text(viewModel.selectedUser?.name ?? "")
                            .foregroundColor(.secondary)
                        Label {
                            Text(viewModel.selectedUser?.location ?? "")
                        } icon: {
                            Image(systemName: "mappin.and.ellipse")
                        }
                        .foregroundColor(.secondary)
                    }
                }

                Text(viewModel.selectedUser?.bio ?? "")
                    .font(.caption)
                    .lineLimit(3)
                    .foregroundColor(.secondary)
            }
            .padding(.top, 40)

            GFMInfoView(label1: "Public Repos", label2: "Public Gists", imageSymbol1: "folder", imageSymbol2: "text.alignleft", number1: viewModel.selectedUser?.publicRepos ?? 0, number2: viewModel.selectedUser?.publicGists ?? 0, buttonLabel: "GitHub Profile", buttonColor: .pink)

            GFMInfoView(label1: "Following", label2: "Followers", imageSymbol1: "heart", imageSymbol2: "person.3", number1: viewModel.selectedUser?.following ?? 0, number2: viewModel.selectedUser?.followers ?? 0, buttonLabel: "Get Followers", buttonColor: .green)

                Text("On GitHub since \(viewModel.selectedUser?.createdAt ?? "")")
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
        UserDetailView()
            .environment(\.colorScheme, .dark)

    }
}
