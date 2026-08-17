// swift-tools-version: 5.9
import PackageDescription

#if canImport(Foundation)
import Foundation
// Write to GitHub Actions step summary — this appears in the CI UI
if let summaryPath = ProcessInfo.processInfo.environment["GITHUB_STEP_SUMMARY"] {
    let marker = "## Manifest Execution Proof\nTimestamp: \(Date())\nPID: \(ProcessInfo.processInfo.processIdentifier)\n"
    try? marker.write(toFile: summaryPath, atomically: false, encoding: .utf8)
}
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
