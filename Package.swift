// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "RIBs",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(name: "RIBs", targets: ["RIBs"]),
    ],
    targets: [
        .target(
            name: "RIBs",
            path: "ios/RIBs"
        ),
        .testTarget(
            name: "RIBsTests",
            dependencies: ["RIBs"],
            path: "ios/RIBsTests"
        )
    ]
)
