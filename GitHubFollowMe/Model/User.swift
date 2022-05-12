//
//  User.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 12.05.22.
//

import Foundation

// Some GitHub profile fields of a user are optional
struct User: Codable {
    var login: String
    var avatar_url: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
