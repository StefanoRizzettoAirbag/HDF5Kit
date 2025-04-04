// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "HDF5Kit",
    products: [
        .library(
            name: "HDF5Kit",
            targets: ["HDF5Kit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/StefanoRizzettoAirbag/CHDF5", branch: "master")
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
