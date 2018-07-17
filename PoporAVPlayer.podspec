#
# Be sure to run `pod lib lint PoporAVPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'PoporAVPlayer'
    s.version          = '0.0.1'
    s.summary          = 'A short description of PoporAVPlayer.'
    
    
    s.homepage         = 'https://github.com/popor/PoporAVPlayer'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'popor' => '908891024@qq.com' }
    s.source           = { :git => 'https://github.com/popor/PoporAVPlayer.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '8.0'
    
    s.source_files = 'PoporAVPlayer/Classes/*.{h,m}'
    
    s.subspec 'Cell' do |ss|
        ss.source_files = 'PoporAVPlayer/Classes/Cell/*.{h,m}'
    end
    
    s.resource     = 'PoporAVPlayer/Classes/PoporAVPlayer.bundle'
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'PoporOrientation'
    s.dependency 'PoporPopNC'
    s.dependency 'PoporUI/UIView'
    s.dependency 'PoporUI/IToast'
    
    s.dependency 'Masonry'
    s.dependency 'KVOController'
    s.dependency 'ReactiveObjC'
    
end
