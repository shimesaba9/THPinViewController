// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "THPinViewController",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "THPinViewController",
            targets: ["THPinViewController"]
        ),
    ],
    targets: [
        .target(
            name: "THPinViewController",
            path: "THPinViewController",
            resources: [
                .process("THPinViewController.bundle"),
            ],
            publicHeadersPath: "PublicHeaders"
        ),
    ]
)
