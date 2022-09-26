// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Verification",
    platforms: [
           .iOS(.v13),
       ],
    products: [
        .library(
            name: "Verification",
            targets: ["Verification"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/ashleymills/Reachability.swift", .upToNextMajor(from: "5.1.0")),
        .package(url: "https://github.com/marmelroy/PhoneNumberKit", .upToNextMajor(from: "3.0.0")),
        .package(url: "https://github.com/WeTransfer/Mocker.git", .upToNextMajor(from: "2.3.0")),
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack", .upToNextMajor(from: "3.0.0")),
        .package(url: "https://github.com/cesarferreira/SwiftEventBus", .upToNextMajor(from: "5.0.1"))
    ],
    targets: [
        .target(
            name: "Verification",
            dependencies: ["Alamofire", .product(name: "Reachability", package: "Reachability.swift"), .product(name: "CocoaLumberjackSwift", package: "CocoaLumberjack"), "PhoneNumberKit", "Mocker"]),
        .testTarget(
            name: "VerificationTests",
            dependencies: ["Verification", "Mocker"])
    ]
)
