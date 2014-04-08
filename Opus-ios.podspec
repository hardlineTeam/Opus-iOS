Pod::Spec.new do |s|
  s.name         = "Opus-iOS"
  s.version      = "1.0"
  s.summary      = "iOS build scripts for the Opus Codec."
  s.homepage     = "https://chatsecure.org"
  s.license      = 'MIT'
  s.author       = { "Chris Ballinger" => "chris@chatsecure.org" }
  s.source       = { :git => 'git@github.com:OnBeep/Opus-iOS.git' }
  s.platform     = :ios, '7.0'
  s.source_files = 'dependencies/include/*.h'
  s.preserve_paths = 'libopus.a'
  s.xcconfig     = { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Opus-iOS/dependencies/lib"' }
  s.requires_arc = false
end

