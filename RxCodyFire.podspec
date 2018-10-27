#
# Be sure to run `pod lib lint RxCodyFire.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RxCodyFire'
  s.version          = '1.0.0'
  s.summary          = 'CodyFire wrapper for RxSwift 🔥'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Install this pod to use CodyFire with RxSwift 🔥'

  s.homepage         = 'https://github.com/MihaelIsaev/RxCodyFire'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MihaelIsaev' => 'isaev.mihael@gmail.com' }
  s.source           = { :git => 'https://github.com/MihaelIsaev/RxCodyFire.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RxCodyFire/Classes/**/*'

  # s.resource_bundles = {
  #   'RxCodyFire' => ['RxCodyFire/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'CodyFire'
  s.dependency 'RxSwift', '~> 4.3.1'
  s.dependency 'RxCocoa', '~> 4.3.1'
end
