//
//  GFMDismissButton.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 27.04.22.
//

import SwiftUI

struct GFMDismissButton: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark.circle")
                .foregroundColor(.secondary)
                .imageScale(.large)
        }
    }
}

struct GFMDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        GFMDismissButton()
        GFMDismissButton()
            .environment(\.colorScheme, .dark)
    }
}
