// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Supabase",
    platforms: [
        .macOS(.v10_15),
        .iOS(.v11),
        .tvOS(.v11),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "Supabase",
            targets: ["Supabase"]
        )
    ],
    dependencies: [
        .package(name: "GoTrue", url: "https://github.com/samjproctor/gotrue", .branch("playground-test")),
        .package(name: "SupabaseStorage", url: "https://github.com/samjproctor/storage-swift", .branch("playground-test")),
        .package(name: "Realtime", url: "https://github.com/samjproctor/realtime", .branch("playground-test")),
        .package(name: "PostgREST", url: "https://github.com/samjproctor/postgREST", .branch("playground-test")),
    ],
    targets: [
        .target(
            name: "Supabase",
            dependencies: ["GoTrue", "SupabaseStorage", "Realtime", "PostgREST"]
        ),
        .testTarget(
            name: "SupabaseTests",
            dependencies: ["Supabase"]
        ),
    ]
)
