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
        .package(url: "https://github.com/bigo-ads/BigoADS-Swift-Package.git", exact: "6.2.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkBigoAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkBigoAdapter/60200.2.10/AnyThinkBigoAdapter-60200.2.10.zip",
            checksum: "602ea71b0c0d10b6a19c1c6357e17025b1cdd8c8bbb04b2d5128e571663c54cf"
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
