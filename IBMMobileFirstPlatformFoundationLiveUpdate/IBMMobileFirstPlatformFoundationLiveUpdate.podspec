Pod::Spec.new do |s|
  s.name             = 'IBMMobileFirstPlatformFoundationLiveUpdate'
  s.version          = '8.0.202005041257'
  s.summary          = 'LiveUpdate iOS SDK for IBM MobileFirst Foundation'
  s.description      = 'LiveUpdate iOS SDK lets you query runtime configuration properties and features which you set in the LiveUpdate Settings screen in the MobileFirst Operations Console.
With LiveUpdate integrated in your application you can implement feature toggling and more.'

  s.homepage         = 'https://mobilefirstplatform.ibmcloud.com'
  s.license          = 'http://www.apache.org/licenses/LICENSE-2.0'
  s.author      	 = { 'Vittal R Pai' => 'vittalpai@in.ibm.com' }

  s.swift_version = '5.0'
  s.platform     	 = :ios, '8.0'
  s.source           = {:git => 'https://github.com/mfpdev/mfp-live-update-ios-sdk.git', :tag => s.version}
  s.dependency 'IBMMobileFirstPlatformFoundation','~> 8.0'
  
  s.source_files = 'IBMMobileFirstPlatformFoundationLiveUpdate/Source/**/*.{swift}', 'IBMMobileFirstPlatformFoundationLiveUpdate.h'
end
