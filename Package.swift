// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "SwiftBugs",
    products: [
        .library(
            name: "SwiftBugs",
            targets: ["SwiftBugs"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftBugs",
            dependencies: []),
        .testTarget(
            name: "SwiftBugsTests",
            dependencies: ["SwiftBugs"]),
    ]
)
