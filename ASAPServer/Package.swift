import PackageDescription

let package = Package(
    name: "ASAP",
    dependencies: [
        .Package(url: "https://github.com/zewo/JSON.git", Version(0, 1, 0)),
        .Package(url: "https://github.com/gscalzo/swiftra.git", Version(0, 0, 8))
    ]
)