// swift-tools-version:5.10.0

import PackageDescription

let package = Package(
  name: "RxDataSources",
  platforms: [
    .iOS(.v14),
    .tvOS(.v14)
  ],
  products: [
    .library(
        name: "RxDataSources",
        targets: [
            "RxDataSources"
        ]
    ),
    .library(
        name: "RxDataSources-Dynamic",
        type: .dynamic,
        targets: [
            "RxDataSources"
        ]
    ),
    .library(
        name: "Differentiator",
        targets: [
            "Differentiator"
        ]
    )
  ],
  dependencies: [
    .package(
        url: "https://github.com/ReactiveX/RxSwift.git",
        exact: Version(stringLiteral: "6.7.0")
    ),
  ],
  targets: [
    .target(
        name: "RxDataSources",
        dependencies: [
            "Differentiator",
            "RxSwift",
            .product(
                name: "RxCocoa",
                package: "RxSwift"
            )
        ]
    ),
    .target(name: "Differentiator"),
    .testTarget(
        name: "RxDataSourcesTests",
        dependencies: [
            "RxDataSources"
        ]
    )
  ],
  swiftLanguageVersions: [.v5]
)
