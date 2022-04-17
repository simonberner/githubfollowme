//
//  ContentView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 12.04.22.
//

import SwiftUI

struct GitHubFollowMeTabView: View {
    var body: some View {
        TabView {
            SearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
            FavoritesView()
                .tabItem { Label("Favorites", systemImage: "star") }
        }
        .tint(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GitHubFollowMeTabView()
    }
}
