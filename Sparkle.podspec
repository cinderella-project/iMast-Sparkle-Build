Pod::Spec.new do |s|
    s.name        = "Sparkle"
    s.version     = "2.0.0"
    s.summary     = "A software update framework for macOS"
    s.description = "Sparkle is an easy-to-use software update framework for Cocoa developers."
    s.homepage    = "http://sparkle-project.org"
    s.documentation_url = "http://sparkle-project.org/documentation/"
    s.screenshot  = "http://sparkle-project.org/images/screenshot-noshadow@2x.png"
    s.license     = {
      :type => 'MIT',
      :file => 'LICENSE'
    }
    s.authors     = {
        'Mayur Pawashe' => 'zorgiepoo@gmail.com',
        'Kornel Lesiński' => 'pornel@pornel.net',
        'Jake Petroules' => 'jake.petroules@petroules.com',
        'C.W. Betts' => 'computers57@hotmail.com',
        'Andy Matuschak' => 'andy@andymatuschak.org',
    }
  
    s.platform = :osx, '10.9'
    s.source   = {
        :http => "https://github.com/cinderella-project/iMast-Sparkle-Build/releases/download/2.0.0.1/Sparkle-2.0.0.tar.xz",
        :sha256 => "cddc599bcd697d82a6c76f007e015a27fb1b53442178fe585284ca76db3351a1",
    }
    s.source_files = 'Sparkle.framework/Versions/A/Headers/*.h'
  
    s.preserve_paths = 'bin/*'
    s.public_header_files = 'Sparkle.framework/Versions/A/Headers/*.h'
    s.vendored_frameworks  = 'Sparkle.framework'
    s.xcconfig            = {
        'FRAMEWORK_SEARCH_PATHS' => '"${PODS_ROOT}/Sparkle"',
        'LD_RUNPATH_SEARCH_PATHS' => '@loader_path/../Frameworks'
    }
    s.requires_arc        = true
end
  