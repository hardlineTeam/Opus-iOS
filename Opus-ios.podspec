Pod::Spec.new do |s|
  s.name         = "Opus-ios"
  s.version      = "1.6"
  s.summary      = "iOS build scripts for the Opus Codec."
  s.homepage     = "https://chatsecure.org"
  s.license      = 'MIT'
  s.author       = { "Chris Ballinger" => "chris@chatsecure.org" }
  s.source       = { :git => "https://github.com/OnBeep/Opus-iOS.git", :tag => "1.6" }
  s.platform     = :ios, '8.0'
  s.source_files = 'dependencies/include/opus/*.h'
  s.public_header_files = 'dependencies/include/opus/*.h'
  s.preserve_paths = 'dependencies/lib/libopus.a'
  s.library = 'opus'
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Opus-ios/dependencies/lib"' }  
 s.requires_arc = false
end

