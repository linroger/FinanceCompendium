// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GitHubApp",
    platforms: [
        .macOS(.v15) // macOS Sequoia minimum (targeting latest features)
    ],
    products: [
        .executable(
            name: "GitHubApp",
            targets: ["GitHubApp"]
        )
    ],
    dependencies: [
        // Add dependencies here if needed
        // Example: .package(url: "https://github.com/apple/swift-async-algorithms", from: "1.0.0")
    ],
    targets: [
        .executableTarget(
            name: "GitHubApp",
            dependencies: [],
            path: ".",
            exclude: [
                "Package.swift",
                "Resources",
                "../MODERNIZATION_PLAN.md",
                "../README.md"
            ],
            sources: ["App", "Views", "Models", "Services", "Components"],
            resources: [
                .process("Resources")
            ],
            swiftSettings: [
                // Enable Swift 6.2 strict concurrency
                .enableUpcomingFeature("StrictConcurrency"),
                .enableExperimentalFeature("StrictConcurrency"),

                // Enable complete concurrency checking
                .unsafeFlags(["-Xfrontend", "-strict-concurrency=complete"]),

                // Optimization flags for Apple Silicon
                .unsafeFlags(["-O"], .when(configuration: .release))
            ],
            linkerSettings: [
                // Link frameworks
                .linkedFramework("SwiftUI"),
                .linkedFramework("WebKit"),
                .linkedFramework("AppKit")
            ]
        )
    ],
    swiftLanguageVersions: [.version("6")]
)
