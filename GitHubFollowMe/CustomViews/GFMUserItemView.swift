//
//  GFMUserItemView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 27.06.22.
//

import SwiftUI

struct GFMUserItemView: View {
    var imageIcon: String
    var label: String
    var count: Int

    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageIcon)
                Text(label)
            }
            Text("\(count)")
                .padding(.top, 1)
        }
    }
}

struct GFMUserItemView_Previews: PreviewProvider {
    static var previews: some View {
        GFMUserItemView(imageIcon: "folder", label: "Public Repos", count: 12)
    }
}
