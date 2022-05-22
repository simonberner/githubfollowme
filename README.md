# GitHubFollowMe (🚧 in progress...)
This App is an example how a Take-Me-Home Project on an interview for an iOS Developer position can look like.

<p align="center">
    <img src="https://img.shields.io/badge/iOS-15.4+-blue.svg" />
    <img src="https://img.shields.io/badge/Swift-5.6-brightgreen.svg" />
    <img src="https://img.shields.io/badge/license-MIT-red.svg" />
    <a href="https://twitter.com/simonbernerdev">
        <img src="https://img.shields.io/badge/Contact-@simonbernerdev-orange" alt="Twitter: @simonbernerdev" />
    </a>
    <a href="https://gitmoji.dev">
        <img src="https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg?style=flat-square" alt="Gitmoji">
    </a>
</p>

## Tech Stack
- Swift 5.6.1
- SwiftUI
- Xcode 13.4
- Codable

## Libraries
🚫 No 3rd Party Libraries in use 

## Device Requirements
This App runs on an iPhone with iOS 15+

## Common Take-Me-Home Project Tasks
- Do some small design
- Make a network call to an API
- Retrieve the data and parse the JSON (e.g. from a GraphQL query)
- Display the data in a pretty UI
- Adding some Unit-Tests

### Beyond the scope
The following things can/will impress, but are in most cases way beyond the scope of a take me home project:
- Error handling -> add custom alerts
- Error handling -> handle each possible HTTPURLResponse code
- Logging ([OSLog](https://developer.apple.com/documentation/oslog))
- [SwiftLint](https://github.com/realm/SwiftLint)
- An extensive suite of Unit-Tests
- UI-Tests

## What interviewers might be looking for
- The given time frame for building such an App, is not what matters most
- What are the persons's first steps for building the app?
- Are there any design drawings present?
- App-Icon?
- Does the project include a README (with some screens of the App)?
- How does the UI look like? -> Apple design guidelines
- Are the given tasks completed?
- Does the App actually do what it is supposed to do?
- Design Patterns?
- Upload in TestFlight?
- No crashes (handling of optionals?)
- Testing: Unit-Tests? How well are the test activities documented? Real-Device Testing?

## Screens
![Search](gfm-white.png)
![Search](gfm-dark.png)

## Functionality
The functionalities of this App are not rocket sience. But still, they show in a nice way, how one can fetch and present user data
from the GitHub API.
- Get and display all the followers of a specific GitHub user.
- View the profile of a specific follower.
- Add a follower to a list of favourites.

## Learnings
### Dashes and Hyphen
- [Never use a hyphen where an 'en dash' or an 'em dash' is required.](https://www.thepunctuationguide.com/hyphen.html)
- [en dash is slightly wider than the hyphen](https://www.thepunctuationguide.com/en-dash.html)
- [Do not mistake the em dash (—) for the slightly narrower en dash (–) or the even narrower hyphen (-)](https://www.thepunctuationguide.com/em-dash.html)
### TBD
- [Downloading and Caching images in SwiftUI](https://www.avanderlee.com/swiftui/downloading-caching-images/)
- [SOLID Principles in Swift](https://pyartez.github.io/architecture/solid-principles-in-swift-liskov-substitution-principle.html)
- [SwiftUI performance tips](https://martinmitrevski.com/2022/04/14/swiftui-performance-tips/)
- [How to present a new view using sheets](https://www.hackingwithswift.com/quick-start/swiftui/how-to-present-a-new-view-using-sheets)
- [Regular Expression in Swift](https://www.advancedswift.com/regular-expressions/)
### Regular Expressions
- [Create and Test regex](https://regexr.com/)
### NSPredicate
- [Examples Cheatsheet](https://nspredicate.xyz/)
### SwiftLint
- [How to use SwiftLint with Xcode](https://developerinsider.co/how-to-use-swiftlint-with-xcode-to-enforce-swift-style-and-conventions/)
- [Rule Directory](https://realm.github.io/SwiftLint/rule-directory.html)
### Architecture
- [Point free](https://www.pointfree.co/)
- [iOS Architecture Patterns](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52)
- [iOS Design Patterns](https://www.raywenderlich.com/ios/paths/iosdesignpatterns)
- Design patterns are abstract ways of arranging code meant to be applied to your unique codebase and requirements.
- Design patterns are not templates you have to squeeze your code into!
- Design patterns are just guidelines to help you make your code:
    - Easy to understand
    - Well organized
    - Maintainable and easy to expand/extend/build upon it in the future
- People are often to focused on: "OMG, which design patter do we have to use? [What architecture do you use for your SwiftUI app?](https://twitter.com/dejadu13/status/1523679164397920258)
    - [Viper](https://www.raywenderlich.com/8440907-getting-started-with-the-viper-architecture-pattern), MVVM?"
    - [Singleton](https://developer.apple.com/documentation/swift/cocoa_design_patterns/managing_a_shared_resource_using_a_singleton)
        - Convenient to have just one single global thing to share (e.g. NetworkManager, SessionManager)
        - Cons because everyone can access (and maybe change it)!
    - MVVM, MVC, VIPER
    - [Composable Architecture](https://dzone.com/articles/composable-architecture?edition=731522)
    - Coordinator Pattern
    - TCA
    - Elm?
#### MVVM architecture
- Keeps the code loosely coupled
- Increases testability (from a Unit/Integration Test perspective)
### UIKit vs SwiftUI
- What is called view in SwiftUI, are called ViewControllers in UIKit
### Codable
- [](https://www.avanderlee.com/swift/json-parsing-decoding/)
- [Codable is an API to encode and decode data to/from a serialized format like JSON](https://www.swiftbysundell.com/basics/codable/)
- Encode to JSON
- Decode from JSON
- One can use camelCase for var names in a struct. Thankfully, both JSONEncoder and JSONDecoder provide a keyDecodingStrategy or .keyEncodingStrategy to .convertToSnakeCase.

## GitHub API
- [List followers of a user](https://docs.github.com/en/rest/users/followers#list-followers-of-a-user)

## Worklog
- Create screens and views
- Add the view model
- Validate username input by adding a regex 
- Add the Model
- Setup the NetworkManager with the singleton pattern

## Credits
GitHubFollowMe is inspired by the course 'iOS Dev Job Interview Practice - Take Home Project' by [Sean Allen](https://twitter.com/seanallen_dev).
I am currently porting the original UIKit implementation to SwiftUI.
