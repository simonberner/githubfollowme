//
//  FollowersView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 24.04.22.
//

import SwiftUI

struct FollowersView: View {

//    @ObservedObject var viewModel: GFMViewModel // injected (not owned by this view) observed object
    @EnvironmentObject var viewModel: GFMViewModel

    var columns: [GridItem] =
    Array(repeating: .init(.fixed(40), spacing: 80, alignment: .center), count: 3)

    var body: some View {
        if viewModel.followers.isEmpty { // can be tested with user: hkforever
            GFMEmtpyFollowerView()
        } else {
            VStack(alignment: .leading) {
                ScrollView(.vertical) {
                    LazyVGrid(columns: columns) {
                        ForEach(viewModel.followers) { follower in
                            FollowerCell(username: follower.login, avatarUrl: follower.avatarUrl)
                        }
                        .onTapGesture {
                            print("TODO: show detail view")
                        }
                        if viewModel.hasMoreFollowers {
                            ProgressView()
                                .onAppear {
                                    viewModel.getFollowers()
                                }
                        }
                    }
                }
            }
            .searchable(text: $viewModel.usernameSearch, prompt: Text("Search for a username"))
            .autocapitalization(.none)
            .onChange(of: viewModel.usernameSearch, perform: { searchText in
                if !searchText.isEmpty {
                    // on the very first change on an empty usernameSearch:
                    // take a snapshot of the current followers + page for the reset
                    if viewModel.followersSnapshot.isEmpty {
                        viewModel.followersSnapshot = viewModel.followers
                        viewModel.filteredFollowers = viewModel.followers
                        viewModel.pageSnapshot = viewModel.page
                    }
                    // take a snapshot of the current followers for filtering
                    // start filtering the current followers
                    viewModel.followers = viewModel.filteredFollowers.filter { $0.login.contains(searchText) }
                    print("search text is: \(searchText)")
                } else {
                    // empty or cancel
                    // reset the followers to the state before filtering
                    viewModel.resetFollowersToSnapshot()
                }
            })
            .padding()
        }

        // Place plus button top right
//        .overlay(alignment: .topTrailing) {
//            GFMDismissButton()
//        }
    }
}

 struct FollowersView_Previews: PreviewProvider {
    static var previews: some View {
        FollowersView()
    }
 }
