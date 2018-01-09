#
# Be sure to run `pod lib lint GithubIssues.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GithubIssues'
  s.version          = '0.1.0'
  s.summary          = 'A short description of GithubIssues.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/serhii-londar/GithubIssues'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'serhii-londar' => 'serhii.londar@gmail.com' }
  s.source           = { :git => 'https://github.com/serhii-londar/GithubIssues.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.source_files = 'GithubIssues/Classes/**/*'

  s.resources = ["GithubIssues/Resources/**/Main.storyboard"]
# s.resource_bundles = {
#   'GithubIssues' => ['GithubIssues/Assets/Main.storyboard']
# }
  s.frameworks = 'Foundation'
  s.dependency 'GithubAPI'
end
