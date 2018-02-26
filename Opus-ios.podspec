Pod::Spec.new do |spec|
  spec.name         = "Opus-ios"
  spec.summary      = "A totally open, royalty-free, highly versatile audio codec."
  spec.version      = "1.8"
  spec.homepage     = "https://github.com/chrisballinger/Opus-iOS"
  spec.authors      = { "Chris Ballinger" => "chris@chatsecure.org" }
  spec.source       = { :git => "https://github.com/OnBeep/Opus-iOS.git", :tag => "v" + spec.version.to_s }
  spec.platforms    = { :ios => '9.0', :watchos => '2.0' }
  spec.requires_arc = true
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.source_files = 'dependencies/include/opus/*.h'
  spec.public_header_files = 'dependencies/include/opus/*.h'
  spec.preserve_paths = 'dependencies/lib/libopus.a'
  spec.library = 'opus'
  spec.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Opus-ios/dependencies/lib"' } 
end
