// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationBigoAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "TPNMediationBigoAdapter",
            targets: ["TPNMediationBigoAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/bigo-ads/BigoADS-Swift-Package.git", exact: "6.1.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkBigoAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkBigoAdapter/6.1.0.2.0/AnyThinkBigoAdapter-6.1.0.2.0.zip",
            checksum: "cf81fe156a7c0008b1cf4f252a98824b49306b0120a4fb9eb1f25d5747b6715b"
        ),
        .target(
            name: "TPNMediationBigoAdapterTarget",
            dependencies: [
                "AnyThinkBigoAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "BigoADS", package: "BigoADS-Swift-Package")
            ],
            path: "Sources/TPNMediationBigoAdapterTarget"
        )
    ]
)
