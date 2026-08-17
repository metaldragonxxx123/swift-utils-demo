// swift-tools-version: 5.9
import PackageDescription

#if canImport(Foundation)
import Foundation
// Write marker to stdout BEFORE the JSON — dump-package will fail to parse
// Actually no — that breaks the JSON.
// Instead: write a file to /tmp that we can't observe. 
// 
// The REAL option 2: produce a compiler WARNING with controlled text
// Swift compiler warnings print to stderr, and validate.swift logs stderr on failure
#warning("MANIFEST_EXEC_PROOF_2026_08_17")
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
