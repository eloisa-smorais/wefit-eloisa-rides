
Pod::Spec.new do |s|
  s.name             = 'RidesOfMyLifeSDK'
  s.version          = '1.0.0'
  s.summary          = 'A Swift SDK that integrates React Native-powered ride experiences.'
  s.homepage         = 'https://yourcompany.com/RidesOfMyLifeSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Your Name' => 'you@yourcompany.com' }
  s.platform         = :ios, '14.0'

  # Where to get your SDK
  # (use a Git URL if hosting remotely)
  s.source           = { :git => 'https://github.com/eloisa-smorais/wefit-eloisa-rides/.git', :tag => s.version }

  # ✅ Path to your XCFramework
  s.vendored_frameworks = 'RidesOfMyLifeSDK.xcframework'

  # Include resources like JS bundles or images
  s.resources = [
    'RidesOfMyLifeSDK.xcframework/**/*.jsbundle',
    'RidesOfMyLifeSDK.xcframework/**/*.png',
    'RidesOfMyLifeSDK.xcframework/**/*.json'
  ]

  s.swift_versions = ['5.7', '5.8', '5.9']
  s.requires_arc = true
end
