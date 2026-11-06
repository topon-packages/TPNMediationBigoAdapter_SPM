# TopOn - iOS Bigo Ads Mediation Adapter

The TopOn mediation adapter for iOS, distributed via Swift Package Manager.

## Requirements

- iOS 12.0+
- Xcode 15.0+
- TopOn iOS Core SDK (`TPNiOS`) 6.5.60+

## Installation

### Xcode

1. In Xcode, choose **File > Add Package Dependencies…**
2. Enter the repository URL:
   ```
   https://github.com/topon-packages/TPNMediationBigoAdapter_SPM.git
   ```
3. Select **Exact Version** and enter the target version (e.g. `x.x.x`).
4. Add the `TPNMediationBigoAdapter` product to your app target.
5. In your target's **Build Settings**, add `-ObjC` to **Other Linker Flags**.

### Package.swift

```swift
dependencies: [
    .package(
        url: "https://github.com/topon-packages/TPNMediationBigoAdapter_SPM.git",
        exact: "x.x.x"
    )
]
```

## Included dependencies

- [`TPNiOS`](https://github.com/topon-packages/TPNiOS_SPM.git) (>= 6.5.60)
- [`BigoADS`](https://github.com/bigo-ads/BigoADS-Swift-Package.git)
