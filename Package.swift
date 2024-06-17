// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "dnd",
    dependencies: [
        .package(
            url: "https://github.com/zaneenders/color-palette.git",
            revision: "main"),
        /*
        Preview the Docs with the following command and view them in your Web Browser.
        swift package --disable-sandbox preview-documentation --target _DnD --include-extended-types
        */
        .package(
            url: "https://github.com/apple/swift-docc-plugin",
            from: "1.3.0"),
    ],
    targets: [
        .executableTarget(
            name: "display",
            dependencies: [
                "_DnD",
                .product(name: "Color", package: "color-palette"),
            ]),
        .target(
            name: "_DnD",
            dependencies: [.product(name: "Color", package: "color-palette")]),
    ]
)
