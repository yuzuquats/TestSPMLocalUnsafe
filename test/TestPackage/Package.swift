// swift-tools-version:5.1

import PackageDescription

let package = Package(
  name: "TestPackage",
  products: [
     .library(
      name: "TestPackage",
      targets: ["TestTarget"]
    )
  ],
  targets: [
    .target(
      name: "TestTarget",
      sources: [
        "File.swift"
      ],
      linkerSettings: [
        .unsafeFlags(["-F", "/blah/"]),
      ]
    ),
  ]
)
