//
//  NetworkManager.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 15.05.22.
//

import Foundation

final class NetworkManager {
    // singleton
    static let shared = NetworkManager()
    private let baseURL = "https://api.github.com/users/"

    private init() {}

    // async -> runs on a background thread
    func getFollowers(for username: String, page: Int) async throws -> [Follower] {
        let followerEndpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"

        // check if url is valid, else throw an error
        guard let url = URL(string: followerEndpoint) else {
             throw GFMError.invalidURL
        }

        // tuple: get the data from the endpoint
        let (data, urlResponse) = try await URLSession.shared.data(from: url)
        print("URL response: \(urlResponse)")

        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            return try decoder.decode(FollowerResponse.self, from: data).request
        } catch {
            throw GFMError.invalidData
        }
    }
}
