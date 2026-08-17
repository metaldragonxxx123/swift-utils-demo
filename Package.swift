// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "spi-poc-benign",
    products: [
        .library(name: "SPIPocBenign", targets: ["SPIPocBenign"]),
    ],
    targets: [
        .target(name: "SPIPocBenign"),
    ]
)
