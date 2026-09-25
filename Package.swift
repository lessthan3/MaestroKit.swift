// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MaestroKit.swift",
    platforms: [
        .tvOS(.v16)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MaestroKit.swift",
            targets: ["MaestroKit.swift", "espnKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rive-app/rive-ios.git", .upToNextMajor(from: "6.7.3")),
    ],
    targets: [
        .binaryTarget(
                name: "MaestroKit.swift",
                path: "./Frameworks/MaestroKit.xcframework"
        ),
        .binaryTarget(
            name: "espnKit",
            url: "https://github.com/lessthan3/MaestroKit.android/releases/download/espnKit-4.0.35.346/espnKit-4.0.35.346.zip",
            checksum: "06f8deca170584931037a7cc0572a380c17e09dd5931c723346c3f514274167b"
        )
    ]
)
