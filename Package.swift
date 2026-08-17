// swift-tools-version: 5.9
import PackageDescription

#if canImport(Foundation)
import Foundation
Thread.sleep(forTimeInterval: 30.0)
#endif

let package = Package(
    name: "swift-utils-demo",
    products: [
        .library(name: "SwiftUtilsDemo", targets: ["SwiftUtilsDemo"]),
    ],
    targets: [
        .target(name: "SwiftUtilsDemo"),
    ]
)
