// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "HDF5Kit",
    products: [
        .library(
            name: "HDF5Kit",
            targets: ["HDF5Kit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/jalebara/CHDF5",from: "1.0.1")
    ],
    targets: [
        .target(
            name: "HDF5Kit",
            dependencies: [
                "CHDF5"
            ],
            path: "Source"),
        .testTarget(
            name: "HDF5KitTests",
            dependencies: ["HDF5Kit"]),
    ]
)
