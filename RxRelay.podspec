Pod::Spec.new do |s|
  s.name             = "RxRelay"
  s.version          = "6.9.0"
  s.summary          = "Relays for RxSwift - PublishRelay, BehaviorRelay and ReplayRelay"
  s.description      = <<-DESC
Relays for RxSwift - PublishRelay, BehaviorRelay and ReplayRelay

* PublishRelay
* BehaviorRelay
* ReplayRelay
* Binding overloads
                        DESC
  s.homepage         = "https://github.com/ReactiveX/RxSwift"
  s.license          = 'MIT'
  s.author           = { "Shai Mishali" => "freak4pc@gmail.com", "Krunoslav Zaher" => "krunoslav.zaher@gmail.com" }
  s.source           = { :git => "https://github.com/ReactiveX/RxSwift.git", :tag => s.version.to_s }

  s.requires_arc          = true

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.10'
  s.watchos.deployment_target = '3.0'
  s.tvos.deployment_target = '9.0'
  s.visionos.deployment_target = "1.0" if s.respond_to?(:visionos)

  s.source_files          = 'RxRelay/**/*.{swift,h,m}'

  s.resource_bundles = {
    'RxRelay_Privacy' => ['Sources/RxRelay/PrivacyInfo.xcprivacy'],
  }

  s.dependency 'RxSwift', '6.9.0'
  s.swift_version = '5.1'

  s.pod_target_xcconfig = { 'APPLICATION_EXTENSION_API_ONLY' => 'YES' }
end
