//
//  GFMUsernameTests.swift
//  GFMUsernameTests
//
//  Created by Simon Berner on 12.04.22.
//

import XCTest
@testable import GitHubFollowMe

// Any test you write for XCTest can be annotated as throws and async.
// Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
// Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
final class GFMUsernameTests: XCTestCase {

    // Put setup code here. This method is called before the invocation of each test method in the class.
    override func setUpWithError() throws {
        super.setUp()
    }

    // Put teardown code here. This method is called after the invocation of each test method in the class.
    override func tearDownWithError() throws {
    }

    // Check that a valid GitHub username can:
    // - contain single hyphens
    // - be max. 39 chars long
    func testRegexValidUsername() throws {
        let validUsername = "super-hero-super-hero-super-hero-supera"

        XCTAssertTrue(validUsername.isValidUsername)

    }

    // Check that a GitHub username must not:
    // - contain hyphens at the beginning and end
    // - contain non-alphanumeric chars
    func testRegexInvalidUsername() throws {
        let invalidUsername = "-s2perhero-"

        XCTAssertFalse(invalidUsername.isValidUsername)
    }

//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
