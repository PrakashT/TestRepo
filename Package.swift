// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "iHealthiOS",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "iHealthiOS",
            targets: ["iHealthiOS"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "iHealthiOS",
            dependencies: [],
            exclude: [],
            publicHeadersPath:"include",
            linkerSettings: [
                .linkedLibrary("./Sources/iHealthiOS/iHealthSDK2.7.6/iHealthSDK2.7.6.a")
            ]),
//        .binaryTarget(name: "iHealthSDK2.7.6", path: "./Sources/iHealthiOS/iHealthSDK2.7.8.zip"),
//        .testTarget(
//            name: "iHealthiOSTests",
//            dependencies: ["iHealthiOS"],path: nil,
//            exclude: [],
//            sources: nil,
//            cSettings: nil, cxxSettings: nil, swiftSettings: nil,
//            linkerSettings: nil),
    ]
)
//x-xcode-log://B1B1A01B-44E4-4BB8-BE3C-7E7F1344139E public headers ("include") directory path for 'iHealthiOS' is invalid or not contained in the target
