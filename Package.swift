// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Rivia",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Rivia",
            targets: ["Rivia"]),
    ],
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.7.3")
    ],
    targets: [
        .target(
            name: "Rivia",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift")
            ]),
        .testTarget(
            name: "RiviaTests",
            dependencies: ["Rivia"]),
    ]
)
