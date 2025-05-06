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
	mqttc.platform = :ios, "6.1", :osx, "10.10", :tvos, "9.0"
	mqttc.ios.deployment_target = "6.1"
	mqttc.osx.deployment_target = "10.10"
	mqttc.tvos.deployment_target = "9.0"
	mqttc.visionos.deployment_target = "2.0"
	mqttc.default_subspec = 'Core'

	mqttc.subspec 'Core' do |core|
		core.dependency 'MQTTClient/Min'
		core.dependency 'MQTTClient/Manager'
	end

	mqttc.subspec 'Min' do |min|
		min.source_files =	"MQTTClient/Sources/MQTTClient/MQTTCFSocketDecoder.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTCFSocketEncoder.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTCFSocketTransport.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTCoreDataPersistence.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTDecoder.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTInMemoryPersistence.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTLog.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTStrict.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTClient.h",
					"MQTTClient/Sources/MQTTClient/MQTTMessage.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTPersistence.h",
					"MQTTClient/Sources/MQTTClient/MQTTSSLSecurityPolicy.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSSLSecurityPolicyDecoder.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSSLSecurityPolicyEncoder.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSSLSecurityPolicyTransport.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTProperties.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSession.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSessionLegacy.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSessionSynchron.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTTransport.{h,m}",
					"MQTTClient/Sources/MQTTClient/GCDTimer.{h,m}"
	end

	mqttc.subspec 'MinL' do |minl|
		minl.dependency 'CocoaLumberjack'

		minl.source_files =	"MQTTClient/Sources/MQTTClient/MQTTCFSocketDecoder.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTCFSocketEncoder.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTCFSocketTransport.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTCoreDataPersistence.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTDecoder.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTInMemoryPersistence.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTLog.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTStrict.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTClient.h",
					"MQTTClient/Sources/MQTTClient/MQTTMessage.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTPersistence.h",
					"MQTTClient/Sources/MQTTClient/MQTTSSLSecurityPolicy.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSSLSecurityPolicyDecoder.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSSLSecurityPolicyEncoder.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSSLSecurityPolicyTransport.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTProperties.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSession.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSessionLegacy.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTSessionSynchron.{h,m}",
					"MQTTClient/Sources/MQTTClient/MQTTTransport.{h,m}",
					"MQTTClient/Sources/MQTTClient/GCDTimer.{h,m}"
		minl.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LUMBERJACK=1' }
	end

	mqttc.subspec 'Manager' do |manager|
		manager.source_files =	"MQTTClient/Sources/MQTTClient/MQTTSessionManager.{h,m}",
					"MQTTClient/Sources/MQTTClient/ReconnectTimer.{h,m}",
					"MQTTClient/Sources/MQTTClient/ForegroundReconnection.{h,m}"
		manager.dependency 'MQTTClient/Min'
	end

	mqttc.subspec 'ManagerL' do |managerl|
		managerl.source_files =	"MQTTClient/Sources/MQTTClient/MQTTSessionManager.{h,m}",
					"MQTTClient/Sources/MQTTClient/ReconnectTimer.{h,m}",
					"MQTTClient/Sources/MQTTClient/ForegroundReconnection.{h,m}"
		managerl.dependency 'MQTTClient/MinL'
		managerl.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LUMBERJACK=1' }
	end

	mqttc.subspec 'Websocket' do |ws|
		ws.source_files = "MQTTClient/Sources/MQTTClient/MQTTWebsocketTransport/*.{h,m}"
		ws.dependency 'SocketRocket'
		ws.dependency 'MQTTClient/Min'
		ws.requires_arc = true
		ws.libraries = "icucore"
	end

	mqttc.subspec 'WebsocketL' do |wsl|
		wsl.source_files = "MQTTClient/Sources/MQTTClient/MQTTWebsocketTransport/*.{h,m}"
		wsl.dependency 'SocketRocket'
		wsl.dependency 'MQTTClient/MinL'
		wsl.requires_arc = true
		wsl.libraries = "icucore"
		wsl.xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'LUMBERJACK=1' }
	end
end
