//
//  FollowerImageView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 24.05.22.
//

import SwiftUI

struct AvatarImageView: View {
    var imageURL = URL(string: "")
    var imageWidth: CGFloat
    var imageHeight: CGFloat

    private let transaction: Transaction = .init(animation: .linear) // Use a transaction to pass an animation between views in a view hierarchy.

    var body: some View {
        VStack {
            AsyncImage(url: imageURL, transaction: transaction) { phase in
                switch phase {
                case .empty:
                        Image("avatar-placeholder")
                            .resizable()
                            .scaledToFit()
                            .frame(width: imageWidth, height: imageHeight)
                            .cornerRadius(10)
                case .success(let image):
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: imageWidth, height: imageHeight)
                            .cornerRadius(10)
                case .failure(let error):
                        VStack {
                            Text("⚠️ Image Not Loaded")
                            Text(error.localizedDescription).font(.caption)
                        }
                @unknown default:
                        EmptyView()
                }
            }
            .accessibilityLabel("Follower Avatar")
        }
    }
}

struct FollowerImageView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarImageView(imageWidth: 120, imageHeight: 120)
    }
}
