//
//  EmtpyFollowerView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 14.06.22.
//

import SwiftUI

struct GFMEmtpyFollowerView: View {
    var body: some View {
        VStack {
            Image("empty-state-logo")
                .resizable()
                .scaledToFit()
            Text("no followers")
                .foregroundColor(.secondary)
        }
    }
}

struct GFMEmtpyFollowerView_Previews: PreviewProvider {
    static var previews: some View {
        GFMEmtpyFollowerView()
    }
}
