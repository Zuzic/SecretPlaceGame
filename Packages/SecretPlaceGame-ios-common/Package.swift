// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "SecretPlaceGameCommon",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(name: "SecretPlaceGameCommon", targets: ["SecretPlaceGameCommon"]),
        .library(name: "SecretPlaceGameLogger", targets: ["SecretPlaceGameLogger"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftyBeaver/SwiftyBeaver", from: Version(1, 0, 0)),
        .package(url: "https://github.com/weichsel/ZIPFoundation", from: Version(0, 0, 0)),
    ],
    targets: [
        .target(
            name: "SecretPlaceGameCommon",
            dependencies: ["SecretPlaceGameLogger"]
        ),
        .target(
            name: "SecretPlaceGameLogger",
            dependencies: [
                .product(name: "SwiftyBeaver", package: "SwiftyBeaver"),
                .product(name: "ZIPFoundation", package: "ZIPFoundation"),
            ]
        ),
    ]
)
