// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "PerfectMatchBenchmark",
  platforms: [.macOS(.v11)],
  products: [
    .executable(
      name: "perfect-match-benchmark",
      targets: ["PerfectMatchBenchmark"]
    )
  ],
  dependencies: [
    .package(url: "git@github.com:apple/swift-collections-benchmark.git", .branch("main")),

    .package(path: "~/Developer/PerfectMatch/PerfectMatchDiffing"),
    .package(url: "git@github.com:onmyway133/DeepDiff.git", .branch("master")),
    .package(url: "git@github.com:jflinter/Dwifft.git", .branch("master")),
    .package(url: "git@github.com:tonyarnold/Differ.git", .branch("main")),
    .package(url: "git@github.com:mcudich/HeckelDiff.git", .branch("master")),
  ],
  targets: [
    .target(
      name: "PerfectMatchBenchmark",
      dependencies: [
        .product(name: "CollectionsBenchmark", package: "swift-collections-benchmark"),

        .product(name: "PerfectMatchDiffing", package: "PerfectMatchDiffing"),
        .product(name: "DeepDiff", package: "DeepDiff"),
        .product(name: "Dwifft", package: "Dwifft"),
        .product(name: "Differ", package: "Differ"),
        .product(name: "HeckelDiff", package: "HeckelDiff"),
      ]
    )
  ]
)
