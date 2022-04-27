//
//  FollowersView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 24.04.22.
//

import SwiftUI

struct FollowersView: View {

    var body: some View {
        VStack {
            Text("Followers View")
                .frame(width: 200, height: 200)
        }
        .overlay(alignment: .topTrailing) {
            GFMDismissButton()
        }
    }
}

struct FollowersView_Previews: PreviewProvider {
    static var previews: some View {
        FollowersView()
    }
}
