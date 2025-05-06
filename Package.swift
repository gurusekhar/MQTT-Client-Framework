// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "MQTTClient",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "MQTTClient",
            targets: ["Core"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Core",
            path: "Sources/MQTTClient",
            sources: [
                "MQTTCFSocketDecoder.m",
                "MQTTCFSocketEncoder.m",
                "MQTTCFSocketTransport.m",
                "MQTTCoreDataPersistence.m",
                "MQTTDecoder.m",
                "MQTTInMemoryPersistence.m",
                "MQTTLog.m",
                "MQTTStrict.m",
                "MQTTMessage.m",
                "MQTTSSLSecurityPolicy.m",
                "MQTTSSLSecurityPolicyDecoder.m",
                "MQTTSSLSecurityPolicyEncoder.m",
                "MQTTSSLSecurityPolicyTransport.m",
                "MQTTProperties.m",
                "MQTTSession.m",
                "MQTTSessionLegacy.m",
                "MQTTTransport.m",
                "GCDTimer.m",
                "MQTTSessionManager.m",
                "ReconnectTimer.m",
                "ForegroundReconnection.m"
            ],
            publicHeadersPath: "."
        )
    ]
)
