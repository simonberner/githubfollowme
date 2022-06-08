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

    private init() {
        configureAsyncImageUrlCache()
    }

    /// Get all the followers of a specific GitHub user
    /// (async -> runs on a background thread)
    /// - Parameters:
    ///   - username: GitHub username
    ///   - page: which page of followers to get
    /// - Returns: an Array of followers
    func getFollowers(for username: String, page: Int) async throws -> [Follower] {
        let followerEndpoint = baseURL + "\(username)/followers?per_page=100&page=\(page)"

        // check if url is valid, else throw an error
        guard let url = URL(string: followerEndpoint) else {
             throw GFMError.invalidURL
        }

//        do {
            // Convenience method to load data using an URL, creates and resumes an URLSessionDataTask internally.
            // network call: retrieves the contents of the url and asynchronously delivers a tuple (containing a Data instance and a URLResponse
            // handle the error case GFMError.offline
            let (data, urlResponse) = try await URLSession.shared.data(from: url)

            guard let response = urlResponse as? HTTPURLResponse, response.statusCode == 200 else {
                throw GFMError.invalidResponse
            }

            do {
                let decoder = JSONDecoder() // decodes the JSON into our FollowerResponse object
                decoder.keyDecodingStrategy = .convertFromSnakeCase // we want to convert the key (not the data!) of the JSON
                return try decoder.decode([Follower].self, from: data)
            } catch {
                throw GFMError.invalidData // throwing a generic error when data can't be decoded
            }
//        } catch {
//            throw GFMError.offline
//        }

    }

    private func configureAsyncImageUrlCache() {
        URLCache.shared.memoryCapacity = 10_000_000 // ~10 MB memory space
        URLCache.shared.diskCapacity = 1_000_000_000 // ~1GB disk cache space
    }
}
