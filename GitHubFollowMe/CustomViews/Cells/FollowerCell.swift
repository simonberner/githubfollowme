//
//  FollowerCell.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 24.05.22.
//

import SwiftUI

struct FollowerCell: View {

    var username = "username"
    var avatarUrl = ""

    var body: some View {
        VStack {
            AvatarImageView(imageURL: URL(string: avatarUrl), imageWidth: 86, imageHeight: 86)
            Text(username)
                .frame(width: 86)
                .lineLimit(1)
                .accessibilityLabel("Follower GitHub Username")
        }
        .padding()
    }
}

struct FollowerCell_Previews: PreviewProvider {
    static var previews: some View {
        FollowerCell()
    }
}
