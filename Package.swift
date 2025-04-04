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
        .package(url: "https://github.com/HDFGroup/hdf5.git", from: "1.12.0")
    ],
    targets: [
        .target(
            name: "HDF5Kit",
            dependencies: [
                "HDF5"
            ],
            path: "Source"),
        .testTarget(
            name: "HDF5KitTests",
            dependencies: ["HDF5Kit"]),
    ]
)
