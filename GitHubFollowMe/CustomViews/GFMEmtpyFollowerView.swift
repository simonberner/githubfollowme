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
            Text("This user doesn't have any followers. Go and follow them 😄.")
                .foregroundColor(.secondary)
                .font(.title2)
                .bold()
                .lineLimit(3)
                .padding()
                .multilineTextAlignment(.center)
            Image("empty-state-logo")
                .resizable()
                .scaledToFit()
        }
    }
}

struct GFMEmtpyFollowerView_Previews: PreviewProvider {
    static var previews: some View {
        GFMEmtpyFollowerView()
    }
}
