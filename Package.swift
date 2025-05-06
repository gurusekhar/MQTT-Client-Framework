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
            targets: ["MQTTClient"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "MQTTClient",
            path: "Sources/MQTTClient",
            sources: [
                "MQTTCFSocketDecoder.h",
                "MQTTCFSocketDecoder.m",
                "MQTTCFSocketEncoder.h",
                "MQTTCFSocketEncoder.m",
                "MQTTCFSocketTransport.h",
                "MQTTCFSocketTransport.m",
                "MQTTCoreDataPersistence.h",
                "MQTTCoreDataPersistence.m",
                "MQTTDecoder.h",
                "MQTTDecoder.m",
                "MQTTInMemoryPersistence.h",
                "MQTTInMemoryPersistence.m",
                "MQTTLog.h",
                "MQTTLog.m",
                "MQTTStrict.h",
                "MQTTStrict.m",
                "MQTTClient.h",
                "MQTTMessage.h",
                "MQTTMessage.m",
                "MQTTPersistence.h",
                "MQTTSSLSecurityPolicy.h",
                "MQTTSSLSecurityPolicy.m",
                "MQTTSSLSecurityPolicyDecoder.h",
                "MQTTSSLSecurityPolicyDecoder.m",
                "MQTTSSLSecurityPolicyEncoder.h",
                "MQTTSSLSecurityPolicyEncoder.m",
                "MQTTSSLSecurityPolicyTransport.h",
                "MQTTSSLSecurityPolicyTransport.m",
                "MQTTProperties.h",
                "MQTTProperties.m",
                "MQTTSession.h",
                "MQTTSession.m",
                "MQTTSessionLegacy.h",
                "MQTTSessionLegacy.m",
                "MQTTTransport.h",
                "MQTTTransport.m",
                "GCDTimer.h",
                "GCDTimer.m",
                "MQTTSessionManager.h",
                "MQTTSessionManager.m",
                "ReconnectTimer.h",
                "ReconnectTimer.m",
                "ForegroundReconnection.h",
                "ForegroundReconnection.m"
            ],
            publicHeadersPath: "."
        )
    ]
)
