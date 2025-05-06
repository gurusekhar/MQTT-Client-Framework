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
                "MQTTClient.h",
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
                "ForegroundReconnection.m",
                "MQTTCFSocketDecoder.h",
                "MQTTCFSocketEncoder.h",
                "MQTTCFSocketTransport.h",
                "MQTTCoreDataPersistence.h",
                "MQTTDecoder.h",
                "MQTTInMemoryPersistence.h",
                "MQTTLog.h",
                "MQTTStrict.h",
                "MQTTMessage.h",
                "MQTTSSLSecurityPolicy.h",
                "MQTTSSLSecurityPolicyDecoder.h",
                "MQTTSSLSecurityPolicyEncoder.h",
                "MQTTSSLSecurityPolicyTransport.h",
                "MQTTProperties.h",
                "MQTTSession.h",
                "MQTTSessionLegacy.h",
                "MQTTTransport.h",
                "GCDTimer.h",
                "MQTTSessionManager.h",
                "ReconnectTimer.h",
                "ForegroundReconnection.h"
            ],
            publicHeadersPath: "."
        )
    ]
)
