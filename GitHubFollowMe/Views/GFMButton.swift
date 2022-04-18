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
        .background(backgroundColor)
        .foregroundColor(.white)
        .buttonStyle(.bordered)
        .cornerRadius(10)
        .font(.headline)
    }
}

struct GFButton_Previews: PreviewProvider {
    static var previews: some View {
        GFMButton(title: "Get Followers", action: {})
    }
}
