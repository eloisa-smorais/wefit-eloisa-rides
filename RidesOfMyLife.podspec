Pod::Spec.new do |spec|
  spec.name          = 'RidesOfMyLifeSDK'
  spec.version       = '0.0.3'
  spec.summary       = 'RockApp summary'
  spec.description   = 'RockApp description'
  spec.homepage      = 'https://github.com/eloisa-smorais/RidesOfMyLife.podspec.git'
  spec.author        = { 'Eloisa Morais' => 'eloisa.morais@wefit.com.br' }
  spec.license       = { :type => 'MIT', :file => 'LICENSE' }
  spec.source        = { :git => 'https://github.com/eloisa-smorais/wefit-eloisa-rides/.git', :tag => spec.version.to_s }

  spec.swift_version = '5.0'
  spec.platform      = :ios, '15.1'

s.vendored_frameworks = 'Frameworks/RidesOfMyLifeSDK.xcframework'

  spec.ios.resources = [
    "Frameworks/RidesOfMyLifeSDK.xcframework",
  ]

end