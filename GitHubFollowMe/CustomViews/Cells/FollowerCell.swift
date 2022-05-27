//
//  FollowerCell.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 24.05.22.
//

import SwiftUI

struct FollowerCell: View {
    var body: some View {
        VStack {
            AvatarImageView(imageURL: URL(string: ""), imageWidth: 120, imageHeight: 120)
            Text("githubusername")
                .frame(width: 120)
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
