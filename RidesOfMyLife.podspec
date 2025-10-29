
# Pod::Spec.new do |s|
#   s.name             = 'RidesOfMyLifeSDK'
#   s.version          = '1.0.0'
#   s.summary          = 'A Swift SDK that integrates React Native-powered ride experiences.'
#   s.homepage         = 'https://yourcompany.com/RidesOfMyLifeSDK'
#   s.license          = { :type => 'MIT', :file => 'LICENSE' }
#   s.author           = { 'Your Name' => 'you@yourcompany.com' }
#   s.platform         = :ios, '15.1'

#   # Where to get your SDK
#   # (use a Git URL if hosting remotely)
#   s.source           = { :git => 'https://github.com/eloisa-smorais/wefit-eloisa-rides.git', :tag => s.version }

#   # ✅ Path to your XCFramework
#   s.vendored_frameworks = 'RidesOfMyLifeSDK.xcframework'

#   # Include resources like JS bundles or images
#   s.resource_bundles = [
#     'RidesOfMyLifeSDK.xcframework/**/*.jsbundle',
#     'RidesOfMyLifeSDK.xcframework/**/*.png',
#     'RidesOfMyLifeSDK.xcframework/**/*.json'
#   ]

#   s.swift_versions = ['5.7', '5.8', '5.9']

#   s.dependency "hermes-engine"
#   s.dependency "lottie-ios"
#   s.dependency "React-Core-prebuilt"
#   s.dependency "ReactNativeDependencies"

#   s.requires_arc = true
# end


Pod::Spec.new do |s|
  s.name             = "RidesOfMyLifeSDK"
  s.version          = "0.0.4"
  s.summary          = "Expo + React Native SDK packaged as an XCFramework"
  s.description      = <<-DESC
                        A reusable SDK built with Expo prebuild and React Native,
                        distributed as an XCFramework for iOS apps.
                       DESC
  s.homepage         = "https://yourdomain.com/sdk"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "You" => "you@yourdomain.com" }
  s.platform         = :ios, "15.0"

  s.source           = { :git => 'https://github.com/eloisa-smorais/wefit-eloisa-rides.git', :tag => s.version }

  # 👇 The XCFramework you built
  s.vendored_frameworks = "build/ReactNativeSDK.xcframework"

  # 👇 Include your prebundled JavaScript bundle (optional)
  s.resources = [
    "build/ReactNativeSDK.xcframework/main.jsbundle",
    "build/ReactNativeSDK.xcframework/assets/**/*"
  ]

  # ✅ Required so Swift code works and can access React Native
  s.swift_version = "5.0"
  s.static_framework = true

  # 👇 React Native core dependencies (matching your RN version 0.81.4)
  s.dependency "React-Core", "0.81.4"
  s.dependency "React-RCTText", "0.81.4"
  s.dependency "React-RCTNetwork", "0.81.4"
  s.dependency "React-RCTAnimation", "0.81.4"
  s.dependency "React-RCTImage", "0.81.4"
  s.dependency "React-RCTLinking", "0.81.4"
  s.dependency "React-RCTSettings", "0.81.4"
  s.dependency "React-RCTBlob", "0.81.4"
  s.dependency "React-RCTAppDelegate", "0.81.4"
  s.dependency "React-cxxreact", "0.81.4"
  s.dependency "React-jsi", "0.81.4"
  s.dependency "React-jsiexecutor", "0.81.4"
  s.dependency "ReactCommon/turbomodule/core", "0.81.4"
  s.dependency "React-NativeModulesApple", "0.81.4"
  s.dependency "Yoga", "0.81.4"

  # 👇 Expo runtime dependencies from prebuild (expo-modules-core, expo-system-ui, etc.)
  s.dependency "ExpoModulesCore", "~> 3.0.23"
  s.dependency "expo-system-ui", "~> 6.0.7"
  s.dependency "expo-splash-screen", "~> 31.0.10"
  s.dependency "expo-asset", "~> 12.0.8"
  s.dependency "expo-linking", "~> 8.0.8"
  s.dependency "expo-image-picker", "~> 17.0.8"
  s.dependency "expo-dev-client", "~> 6.0.12"

  # 👇 React Navigation dependencies (all pure JS, but listed for completeness)
  # Note: These are JS-only; no native pod required for @react-navigation/*
  # React Navigation relies on react-native-screens and react-native-safe-area-context

  s.dependency "react-native-screens", "~> 4.16.0"
  s.dependency "react-native-safe-area-context", "~> 5.6.0"
  s.dependency "react-native-gesture-handler", "~> 2.28.0"
  s.dependency "react-native-reanimated", "~> 4.1.1"

  # 👇 Other native dependencies from your list
  s.dependency "react-native-sound", "~> 0.13.0"
  s.dependency "react-native-svg", "15.12.1"
  s.dependency "lottie-react-native", "~> 7.3.1"

  # 👇 Ensure frameworks are linked statically
  s.pod_target_xcconfig = {
    "DEFINES_MODULE" => "YES",
    "CLANG_CXX_LANGUAGE_STANDARD" => "c++17"
  }
end