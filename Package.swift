// swift-tools-version: 6.3.2

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
        .library(name: "GaypadKit", targets: ["GaypadKit"])
    ],
    targets: [
        .target(name: "GaypadKit")
    ]
)
