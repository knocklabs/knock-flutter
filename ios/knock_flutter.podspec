#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint kncok.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'knock_flutter'
  s.version          = '0.0.1'
  s.summary          = 'iOS implementation of the Knock Flutter plugin.'
  s.description      = <<-DESC
Knock Flutter SDK
                       DESC
  s.homepage         = 'https://github.com/knocklabs/knock-flutter'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'knock.app' => 'knock.app' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
