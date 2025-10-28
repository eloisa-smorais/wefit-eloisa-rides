Pod::Spec.new do |s|
  s.name             = 'RidesOfMyLifeSDK'
  s.version          = '1.0.0'
  s.summary          = 'A Swift SDK for RidesOfMyLife'
  s.description      = <<-DESC
                        RidesOfMyLifeSDK provides native iOS functionality for your rides app.
                       DESC
  s.homepage         = 'https://your-repo-or-docs-link.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => 'https://github.com/eloisa-smorais/wefit-eloisa-rides.git', :tag => spec.version.to_s }
  s.author           = { 'Your Name' => 'you@example.com' }
  s.platform         = :ios, '12.0'
  
  # Link to your prebuilt XCFramework
  s.vendored_frameworks = 'Frameworks/RidesOfMyLifeSDK.xcframework'
  
  # Optional: if your framework depends on system frameworks
  s.frameworks = 'UIKit', 'Foundation'

  # If your framework uses Swift
  s.swift_version = '5.0'
end
