//
//  FollowersView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 24.04.22.
//

import SwiftUI

struct FollowersView: View {

    @State private var usernameSearch = ""
    var username = ""
    var followers: [Follower] = []

    var columns: [GridItem] =
    Array(repeating: .init(.fixed(30), spacing: 80, alignment: .center), count: 3)

    // we don't get a memberwise initializer as soon there is a private property
    init(username: String, followers: [Follower]) {
        self.username = username
        self.followers = followers
    }

    var body: some View {
        VStack(alignment: .leading) {
            Text(username)
                .font(.title2)
            HStack(spacing: 3) {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                    .padding(.leading, 4)
                TextField("Search for a username", text: $usernameSearch)
                    .disableAutocorrection(true)
            }
            .frame(width: 300, height: 40)
            .background(Color(.systemGroupedBackground))
            .cornerRadius(10)
            ScrollView(.vertical) {
                LazyVGrid(columns: columns) {
                    ForEach(followers) { follower in
                        FollowerCell(username: follower.login, avatarUrl: follower.avatarUrl)
                    }
                    .onTapGesture {
                        print("show detail view")
                    }
                }
            }
        }
        .padding()
        // Place plus button top right
//        .overlay(alignment: .topTrailing) {
//            GFMDismissButton()
//        }
    }
}

struct FollowersView_Previews: PreviewProvider {
    static var previews: some View {
        FollowersView(username: "nobody", followers: MockData.followers)
    }
}
