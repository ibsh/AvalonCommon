// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "AvalonCommon",
    products: [
        .library(
            name: "AvalonCommon",
            targets: ["AvalonCommon"]
        )
    ],
    targets: [
        .target(
            name: "AvalonCommon"
        ),
        .testTarget(
            name: "AvalonCommonTests",
            dependencies: ["AvalonCommon"]
        ),
    ]
)
