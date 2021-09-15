require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-glia-widgets-module"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.requires_arc   = true
  s.platforms    = { :ios => "12.0" }
  s.source       = { :git => "https://github.com/salemove/glia-ios-podspecs.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,mm,swift}"
  
  # s.ios.vendored_frameworks = 'GliaWidgets.xcframework'

  # s.pod_target_xcconfig = {'DEFINES_MODULE' => 'YES'}
  # s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC -all_load -force_load' }

  # s.resource_bundles = {
  #   'Resources' => ['./*.xcassets']
  # }
  # s.resources = ['Resources/**/*.*']

  s.dependency "React-Core"
  # s.dependency 'SalemoveSDK', '0.30.2'
  # s.dependency 'PureLayout', '~>3.1'
  s.dependency "GliaWidgets", "0.5.3"
end
