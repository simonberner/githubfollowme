//
//  User.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 12.05.22.
//

import Foundation

// Some GitHub profile fields of a user are optional
// As for this App we are just getting the data from the GitHub user profile,
// most of the fields can be 'let' as no one can't alter any data through the app
struct User: Codable {
    let login: String
    let avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    let publicRepos: Int
    let publicGists: Int
    let htmlUrl: String
    let following: Int
    let followers: Int
    let createdAt: String
}
