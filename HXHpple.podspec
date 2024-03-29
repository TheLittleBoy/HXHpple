#
# Be sure to run `pod lib lint HXHpple.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HXHpple'
  s.version          = '0.1.0'
  s.summary          = 'A nice Objective-C wrapper on the XPathQuery library for parsing HTML.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/TheLittleBoy/HXHpple'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TheLittleBoy' => 'wangxa@edu-edu.com.cn' }
  s.source           = { :git => 'https://github.com/TheLittleBoy/HXHpple.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'HXHpple/Classes/**/*'
  
  s.library = 'xml2'
  
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  
  # s.resource_bundles = {
  #   'HXHpple' => ['HXHpple/Assets/*.png']
  # }
  
  s.resource_bundles = {
      'HXHpple' => ['privacy/PrivacyInfo.xcprivacy'],
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
