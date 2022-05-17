//
//  Follower.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 11.05.22.
//

import Foundation

struct Follower: Codable {
    // Not optional as they will exist in every GitHub profile
    var login: String
    var avatarUrl: String
}

// Helper response object
struct FollowerResponse: Decodable {
    let request: [Follower]
}
