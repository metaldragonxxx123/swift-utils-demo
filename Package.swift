// swift-tools-version: 5.9
import PackageDescription

#if canImport(Foundation)
import Foundation
// Write inert marker to the working directory
// This proves: code executed + had filesystem write access
let marker = "manifest_executed=true\ntimestamp=\(Date())\npid=\(ProcessInfo.processInfo.processIdentifier)\n"
try? marker.write(toFile: "EXEC_PROOF.txt", atomically: true, encoding: .utf8)
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
