#
# Be sure to run `pod lib lint CCSize.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CCSize'
  s.version          = '0.1.0'
  s.summary          = 'Normal sizes for iOS development.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: You can use normal sizes about Screen, NavBar, TabBar, HomeButton in iOS development.
                       DESC

  s.homepage         = 'https://github.com/RachalZhou/CCSize'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RachalZhou' => 'zrcrachal@gmail.com' }
  s.source           = { :git => 'https://github.com/RachalZhou/CCSize.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'CCSize/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  
  s.frameworks = 'UIKit'
end
