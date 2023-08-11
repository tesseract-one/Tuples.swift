// swift-tools-version:5.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Tuples",
    platforms: [.macOS(.v10_13), .iOS(.v11), .tvOS(.v11), .watchOS(.v6)],
    products: [
        .library(
            name: "Tuples",
            targets: ["Tuples"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Tuples",
            dependencies: []),
        .testTarget(
            name: "TuplesTests",
            dependencies: ["Tuples"])
    ]
)
