// swift-tools-version: 5.9
import PackageDescription

#if canImport(Foundation)
import Foundation
// Timing proof: if this manifest executes, dump-package takes ~10s longer
Thread.sleep(forTimeInterval: 10.0)
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
