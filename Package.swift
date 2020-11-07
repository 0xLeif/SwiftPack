// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftPack",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SwiftPack",
            targets: ["SwiftPack"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/0xLeif/Later.git", from: "0.4.1"),
        .package(name: "E", url: "https://github.com/0xLeif/E.num.git", from: "0.1.0"),
        .package(url: "https://github.com/0xLeif/Object.git", from: "0.5.0"),
        .package(url: "https://github.com/0xLeif/FLite.git", from: "1.0.0"),
        .package(url: "https://github.com/0xLeif/UDLoader.git", from: "0.1.0"),
        .package(url: "https://github.com/0xLeif/EKit.git", from: "0.1.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SwiftPack",
            dependencies: [
                "Later",
                "E",
                "Object",
                "FLite",
                "UDLoader",
                "EKit"
            ]),
        .testTarget(
            name: "SwiftPackTests",
            dependencies: ["SwiftPack"]),
    ]
)
