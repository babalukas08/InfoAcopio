# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'infoAcopio' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  inhibit_all_warnings!

workspace 'infoAcopio'
  
# Pods for infoAcopio
 source 'https://github.com/CocoaPods/Specs.git'

def basic_pods
    pod 'Alamofire'
    pod 'XCGLogger'
    pod 'ObjectMapper'
    pod 'SwiftMessages'
    pod 'SwiftKeychainWrapper'
    #pod 'AlamofireObjectMapper', '~> 2.1'
    pod 'AlamofireImage', '~> 3.2.0'
    pod 'RealmSwift'
    pod 'Firebase/AppIndexing'
    pod 'SnapKit', '~> 3.2.0'
    pod 'NibDesignable'
    pod 'AlamofireImage', '~> 3.2.0'
end

target 'infoAcopio' do
    project 'infoAcopio.xcodeproj'
    basic_pods
end

end
