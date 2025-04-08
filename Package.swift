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
        //.package(url: "https://github.com/StefanoRizzettoAirbag/CHDF5", branch: "test")
    ],
    targets: [
            .target(
                name: "HDF5Kit",
                dependencies: ["HDF5"],
                path: "Source"
            ),
            .binaryTarget(
                name: "HDF5",
                path: "HDF5.xcframework"
            )
        ]
)
