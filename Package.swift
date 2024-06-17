// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "_DnD",
    targets: [
        .executableTarget(name: "display",dependencies: ["_DnD"]),
        .target(name: "_DnD"),
    ]
)
