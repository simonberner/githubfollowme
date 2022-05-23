//
//  APError.swift
//  GitHubFollowMe
//
//  Created by Simon Berner on 15.05.22.
//

import Foundation

enum GFMError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case offline
}
