Pod::Spec.new do |mqttc|
	mqttc.name         = "MQTTClient"
	mqttc.version      = "1.0.0"
	mqttc.summary      = "iOS, macOS and tvOS native ObjectiveC MQTT Client Framework"
	mqttc.homepage     = "https://github.com/gurusekhar/MQTT-Client-Framework"
	mqttc.license      = { :type => "EPLv1", :file => "LICENSE" }
	mqttc.author       = { "gurusekhar" => "gurusekhar@gmail.com" }
	mqttc.source       = {
		:git => "https://github.com/gurusekhar/MQTT-Client-Framework.git",
		:submodules => true
	}

	mqttc.requires_arc = true
	mqttc.platform = :ios, "13.0", :osx, "10.15", :tvos, "13.0"
	mqttc.ios.deployment_target = "13.0"
	mqttc.osx.deployment_target = "10.15"
	mqttc.tvos.deployment_target = "13.0"
	mqttc.visionos.deployment_target = "2.0"
	mqttc.default_subspec = 'Core'

	mqttc.subspec 'Core' do |core|
		core.dependency 'Min'
		core.dependency 'Manager'
	end

	mqttc.subspec 'Min' do |min|
		min.source_files =	"Sources/MQTTClient/MQTTCFSocketDecoder.{h,m}",
					"Sources/MQTTClient/MQTTCFSocketEncoder.{h,m}",
					"Sources/MQTTClient/MQTTCFSocketTransport.{h,m}",
					"Sources/MQTTClient/MQTTCoreDataPersistence.{h,m}",
					"Sources/MQTTClient/MQTTDecoder.{h,m}",
					"Sources/MQTTClient/MQTTInMemoryPersistence.{h,m}",
					"Sources/MQTTClient/MQTTLog.{h,m}",
					"Sources/MQTTClient/MQTTStrict.{h,m}",
					"Sources/MQTTClient/MQTTClient.h",
					"Sources/MQTTClient/MQTTMessage.{h,m}",
					"Sources/MQTTClient/MQTTPersistence.h",
					"Sources/MQTTClient/MQTTSSLSecurityPolicy.{h,m}",
					"Sources/MQTTClient/MQTTSSLSecurityPolicyDecoder.{h,m}",
					"Sources/MQTTClient/MQTTSSLSecurityPolicyEncoder.{h,m}",
					"Sources/MQTTClient/MQTTSSLSecurityPolicyTransport.{h,m}",
					"Sources/MQTTClient/MQTTProperties.{h,m}",
					"Sources/MQTTClient/MQTTSession.{h,m}",
					"Sources/MQTTClient/MQTTSessionLegacy.{h,m}",
					"Sources/MQTTClient/MQTTSessionSynchron.{h,m}",
					"Sources/MQTTClient/MQTTTransport.{h,m}",
					"Sources/MQTTClient/GCDTimer.{h,m}"
	end

	mqttc.subspec 'MinL' do |minl|
		minl.dependency 'CocoaLumberjack'

		minl.source_files =	"Sources/MQTTClient/MQTTCFSocketDecoder.{h,m}",
					"Sources/MQTTClient/MQTTCFSocketEncoder.{h,m}",
					"Sources/MQTTClient/MQTTCFSocketTransport.{h,m}",
					"Sources/MQTTClient/MQTTCoreDataPersistence.{h,m}",
					"Sources/MQTTClient/MQTTDecoder.{h,m}",
					"Sources/MQTTClient/MQTTInMemoryPersistence.{h,m}",
					"Sources/MQTTClient/MQTTLog.{h,m}",
					"Sources/MQTTClient/MQTTStrict.{h,m}",
					"Sources/MQTTClient/MQTTClient.h",
					"Sources/MQTTClient/MQTTMessage.{h,m}",
					"Sources/MQTTClient/MQTTPersistence.h",
					"Sources/MQTTClient/MQTTSSLSecurityPolicy.{h,m}",
					"Sources/MQTTClient/MQTTSSLSecurityPolicyDecoder.{h,m}",
					"Sources/MQTTClient/MQTTSSLSecurityPolicyEncoder.{h,m}",
					"Sources/MQTTClient/MQTTSSLSecurityPolicyTransport.{h,m}",
					"Sources/MQTTClient/MQTTProperties.{h,m}",
					"Sources/MQTTClient/MQTTSession.{h,m}",
					"Sources/MQTTClient/MQTTSessionLegacy.{h,m}",
					"Sources/MQTTClient/MQTTSessionSynchron.{h,m}",
					"Sources/MQTTClient/MQTTTransport.{h,m}",
					"Sources/MQTTClient/GCDTimer.{h,m}"
		minl.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LUMBERJACK=1' }
	end

	mqttc.subspec 'Manager' do |manager|
		manager.source_files =	"Sources/MQTTClient/MQTTSessionManager.{h,m}",
					"Sources/MQTTClient/ReconnectTimer.{h,m}",
					"Sources/MQTTClient/ForegroundReconnection.{h,m}"
		manager.dependency 'Min'
	end

	mqttc.subspec 'ManagerL' do |managerl|
		managerl.source_files =	"Sources/MQTTClient/MQTTSessionManager.{h,m}",
					"Sources/MQTTClient/ReconnectTimer.{h,m}",
					"Sources/MQTTClient/ForegroundReconnection.{h,m}"
		managerl.dependency 'MinL'
		managerl.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LUMBERJACK=1' }
	end

	mqttc.subspec 'Websocket' do |ws|
		ws.source_files = "Sources/MQTTClient/MQTTWebsocketTransport/*.{h,m}"
		ws.dependency 'SocketRocket'
		ws.dependency 'Min'
		ws.requires_arc = true
		ws.libraries = "icucore"
	end

	mqttc.subspec 'WebsocketL' do |wsl|
		wsl.source_files = "Sources/MQTTClient/MQTTWebsocketTransport/*.{h,m}"
		wsl.dependency 'SocketRocket'
		wsl.dependency 'MinL'
		wsl.requires_arc = true
		wsl.libraries = "icucore"
		wsl.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LUMBERJACK=1' }
	end
end
