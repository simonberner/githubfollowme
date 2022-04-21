//
//  GFButton.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 18.04.22.
//

import SwiftUI

struct GFMButton: View {
    var title: String
    var action: () -> Void
    var backgroundColor = Color.green

    var body: some View {
        Button(action: action) {
            Label(title, systemImage: "person.2.circle.fill")
        }
        .frame(width: 260, height: 60)
        .background(RoundedRectangle(cornerRadius: 10).fill(backgroundColor))
        .foregroundColor(.white)
//        .buttonStyle(.bordered)
        .font(.headline)
        .frame(minWidth: 200)
    }
}

struct GFButton_Previews: PreviewProvider {
    static var previews: some View {
        GFMButton(title: "Get Followers", action: {})
    }
}
