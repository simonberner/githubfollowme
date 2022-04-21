//
//  SearchView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 14.04.22.
//

import SwiftUI

struct SearchView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Image("gh-logo")
                .resizable()
//                .scaledToFit()
//                .padding()
//                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240)
            GFMTextField(placeholderText: "Enter Username", textInput: .constant(""))
                .padding()
            Spacer()
            GFMButton(title: "Get Followers") {
                // TODO
            }
            .padding(.bottom, 80)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
