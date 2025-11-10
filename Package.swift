// swift-tools-version: 6.2.1
// The swift-tools-version declares the minimum version of Swift required to build this package

import PackageDescription

let package = Package(
    name: "GaypadKit",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .tvOS(.v17),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "GaypadKit",
            targets: ["GaypadKit"]
        )
    ],
    targets: [
        .target(name: "GaypadKit")
    ]
)
