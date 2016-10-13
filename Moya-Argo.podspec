Pod::Spec.new do |s|
  s.name             = "Moya-Argo"
  s.version          = "1.1.1"
  s.summary          = "Argo mappings for Moya network requests"

  s.description      = <<-DESC
  Extensions to simplify mapping Moya responses using Argo
  DESC

  s.homepage         = "https://github.com/wattson12/Moya-Argo"
  s.license          = 'MIT'
  s.author           = { "Sam Watts" => "samuel.watts@gmail.com" }
  s.source           = { :git => "https://github.com/wattson12/Moya-Argo.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/wattson12'

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.9'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files = "Pod/Classes/*.swift"
    ss.dependency "Moya", ">= 8.0.0-beta.2"
    ss.dependency "Argo"
    ss.framework = "Foundation"
  end

  s.subspec "ReactiveCocoa" do |ss|
    ss.source_files = "Pod/Classes/ReactiveCocoa/*.swift"
    ss.dependency "ReactiveSwift", ">= 1.0.0-alpha.1"
    ss.dependency "Moya-Argo/Core"
    ss.dependency "Moya/ReactiveCocoa"
  end

  s.subspec "RxSwift" do |ss|
    ss.source_files = "Pod/Classes/RxSwift/*.swift"
    ss.dependency "Moya-Argo/Core"
    ss.dependency "RxSwift", "3.0.0-beta.2"
    ss.dependency "Moya/RxSwift"
  end

end
