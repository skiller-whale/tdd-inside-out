// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "WordleCheat",
    platforms: [
        .macOS(.v14)
    ],
    products: [
        .executable(name: "wordle-cheat", targets: ["WordleCheat"])
    ],
    targets: [
        .executableTarget(
            name: "WordleCheat"
        ),
        .testTarget(
            name: "WordleCheatTests",
            dependencies: ["WordleCheat"]
        )
    ]
)
