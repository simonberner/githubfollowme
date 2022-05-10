#  GitHubFollowMe
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
- Swift 5.6
- SwiftUI
- Xcode 13.3

## Libraries
🚫 No 3rd Party Libraries in use 

## Device Requirements
This App runs on an iPhone with iOS >= 15.4

## Common Take-Me-Home Project Tasks
- Do some small design
- Make a network call to an API
- Retrieve the data and parse the JSON (e.g. from a GraphQL query)
- Display the data in a pretty UI
- (Maybe some custom alerts to impress, but that might be way beyond the scope of any take me home project)

## Screens

## Learnings
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
- [What architecture do you use for your SwiftUI app?](https://twitter.com/dejadu13/status/1523679164397920258)
- [iOS Architecture Patterns](https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52)
- [iOS Design Patterns](https://www.raywenderlich.com/ios/paths/iosdesignpatterns)
- Design patterns are abstract ways of arranging code meant to be applied to your unique codebase and requirements.
- Design patterns are not templates you have to squeeze your code into!
- Design patterns are just guidelines to help you make your code:
    - Easy to understand
    - Well organized
    - Maintainable and easy to expand/extend/build upon it in the future
- People are often to focused on: "OMG, which design patter do we have to use? MVC?, [Viper](https://www.raywenderlich.com/8440907-getting-started-with-the-viper-architecture-pattern), MVVM?"
#### MVVM architecture
- Keeps the code loosely coupled
- Increases testability (from a Unit/Integration Test perspective)
### UIKit vs SwiftUI
- What is called view in SwiftUI, are called ViewControllers in UIKit

## Worklog
- Create screens and views
- Add the view model
- Validate username input by adding a regex 

## Credits
GitHubFollowMe is inspired by the course 'iOS Dev Job Interview Practice - Take Home Project' by [Sean Allen](https://twitter.com/seanallen_dev).
I am currently porting the original UIKit implementation to SwiftUI.
