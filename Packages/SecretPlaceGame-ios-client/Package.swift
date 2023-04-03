// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "SecretPlaceGameClient",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(name: "SecretPlaceGameClient", targets: ["SecretPlaceGameClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Moya/Moya.git", from: Version(15, 0, 0)),
        .package(url: "https://github.com/nullic/SourceryPlugin.git", branch: "main"),
        .package(path: "../SecretPlaceGame-ios-common"),
    ],
    targets: [
        .target(
            name: "SecretPlaceGameClient",
            dependencies: [
                .product(name: "SecretPlaceGameCommon", package: "SecretPlaceGame-ios-common"),
                .product(name: "SecretPlaceGameLogger", package: "SecretPlaceGame-ios-common"),
                .product(name: "CombineMoya", package: "Moya"),
            ],
            plugins: [
                .plugin(name: "SourceryPlugin", package: "SourceryPlugin"),
            ]
        ),
    ]
)
