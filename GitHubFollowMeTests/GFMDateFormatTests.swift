//
//  GFMDateFormatterTests.swift
//  GitHubFollowMeTests
//
//  Created by Simon Berner on 06.07.22.
//

import XCTest
@testable import GitHubFollowMe

class GFMDateFormatTests: XCTestCase {

    override func setUpWithError() throws {
        super.setUp()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGitHubCreationDateFormatter() throws {
        let createAtDate = "2022-07-07T12:00:00Z" // Z: Zulu time zone is UTC +0 -> Jul 7, 2022
        let formattedDate = createAtDate.formatDate()
        print("formattedDate: \(formattedDate)")
        XCTAssertTrue(formattedDate == "Jul 7, 2022")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
