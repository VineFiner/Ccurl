// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CcurlNio",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .systemLibrary(name: "Ccurl",
                       providers: [
                        .brew(["curl"]),
                        .apt(["libcurl4-openssl-dev"])
        ]),
        .target(
            name: "CcurlNio",
            dependencies: [
            .target(name: "Ccurl")
        ]),
        .testTarget(
            name: "CcurlNioTests",
            dependencies: ["CcurlNio"]),
    ]
)
