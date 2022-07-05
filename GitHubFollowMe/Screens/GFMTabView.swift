//
//  ContentView.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 12.04.22.
//

import SwiftUI

struct GFMTabView: View {
    
    @StateObject var viewModel = GFMViewModel()

    var body: some View {
        TabView {
            SearchView()
                .tabItem { Label("Search", systemImage: "magnifyingglass") }
            FavoritesView()
                .tabItem { Label("Favorites", systemImage: "star") }
        }
        .environmentObject(viewModel)
        .tint(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GFMTabView()
    }
}
