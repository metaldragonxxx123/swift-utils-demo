// swift-tools-version: 5.9
import PackageDescription

#if canImport(Foundation)
import Foundation

// INERT PROOF: prints to stderr only, no writes, no network, no exfil
// This proves Package.swift code executes during CI validation
let env = ProcessInfo.processInfo.environment
let marker = [
    "MARKER_V1",
    "github_actions=\(env["GITHUB_ACTIONS"] ?? "unset")",
    "has_token=\(env["GITHUB_TOKEN"] != nil)",
    "proc1=\((try? String(contentsOfFile: "/proc/1/environ", encoding: .utf8))?.contains("GITHUB_TOKEN") == true ? "token_visible" : "no_token")"
].joined(separator: " ")
fputs("[\(marker)]\n", stderr)
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
