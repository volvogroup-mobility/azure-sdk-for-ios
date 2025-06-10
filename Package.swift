// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AzureSDK",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "AzureStorageBlob", targets: ["AzureStorageBlob"])
    ],
    dependencies: [
        .package(name: "AzureCore", url: "https://github.com/Azure/SwiftPM-AzureCore.git", from: "1.0.0-beta.16")
    ],
    targets: [
        .target(
            name: "AzureStorageBlob",
            dependencies: ["AzureCore"],
            path: "sdk/storage/AzureStorageBlob",
            sources: ["Source"]
        ),
        .testTarget(
            name: "AzureStorageBlobTests",
            dependencies: ["AzureStorageBlob"],
            path: "sdk/storage/AzureStorageBlob",
            sources: ["Tests"]
        )
    ]
)
