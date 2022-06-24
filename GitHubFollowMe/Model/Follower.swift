//
//  Follower.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 11.05.22.
//

import Foundation

struct Follower: Codable, Identifiable {
    var id: Int
    // Not optional as they will exist in every GitHub profile
    var login: String
    var avatarUrl: String

//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
//
//    static func == (lhs: Follower, rhs: Follower) -> Bool {
//        return lhs.id == rhs.id
//    }
}

struct MockData {
    static let sampleFollower1 = Follower(id: 1, login: "user1", avatarUrl: "")
    static let sampleFollower2 = Follower(id: 2, login: "user2", avatarUrl: "")
    static let sampleFollower3 = Follower(id: 3, login: "user3", avatarUrl: "")
    static let sampleFollower4 = Follower(id: 4, login: "user4", avatarUrl: "")

    static let followers = [sampleFollower1, sampleFollower2, sampleFollower3, sampleFollower4]
}
