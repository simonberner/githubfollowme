//
//  Follower.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 11.05.22.
//

import Foundation

struct Follower: Codable, Identifiable {
    var id = UUID()
    // Not optional as they will exist in every GitHub profile
    var login: String
    var avatarUrl: String
}

struct MockData {
    static let sampleFollower1 = Follower(id: UUID(), login: "user1", avatarUrl: "")
    static let sampleFollower2 = Follower(id: UUID(), login: "user2", avatarUrl: "")
    static let sampleFollower3 = Follower(id: UUID(), login: "user3", avatarUrl: "")
    static let sampleFollower4 = Follower(id: UUID(), login: "user4", avatarUrl: "")

    static let followers = [sampleFollower1, sampleFollower2, sampleFollower3, sampleFollower4]
}
