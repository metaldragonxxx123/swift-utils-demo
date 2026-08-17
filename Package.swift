// swift-tools-version: 5.9
import PackageDescription

#if canImport(Foundation)
import Foundation
let marker = "EXEC_\(Int(Date().timeIntervalSince1970))"
#else
let marker = "NO_EXEC"
#endif

let package = Package(
    name: "swift-utils-demo-\(marker)",
    products: [
        .library(name: "SwiftUtilsDemo", targets: ["SwiftUtilsDemo"]),
    ],
    targets: [
        .target(name: "SwiftUtilsDemo"),
    ]
)
