//
//  FollowersView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 24.04.22.
//

import SwiftUI

struct FollowersView: View {

    @State private var usernameSearch = ""
    @ObservedObject var viewModel: GFMViewModel // injected (not owned by this view) observed object

    var columns: [GridItem] =
    Array(repeating: .init(.fixed(40), spacing: 80, alignment: .center), count: 3)

    var body: some View {
        VStack(alignment: .leading) {
            Text(viewModel.usernameInput)
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
                    ForEach(viewModel.followers) { follower in
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
        FollowersView(viewModel: GFMViewModel())
    }
 }
