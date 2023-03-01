// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SecretPlaceGameAssets",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(name: "SecretPlaceGameAssets", targets: ["SecretPlaceGameAssets"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftGen/SwiftGenPlugin", from: "6.4.0"),
    ],
    targets: [
        .target(name: "SecretPlaceGameAssets",
                dependencies: [],
                resources: [
                    .process("Resources"),
                ],
                plugins: [
                    .plugin(name: "SwiftGenPlugin", package: "SwiftGenPlugin"),
                ]),
    ]
)
