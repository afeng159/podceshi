
Pod::Spec.new do |s|
    s.name         = "podceshi"
    s.version      = "1.0.0"
    s.ios.deployment_target = '7.0'
    s.summary      = "this is a test version"
    s.homepage     = "https://github.com/afeng159/podceshi"
    s.license              = { :type => "MIT", :file => "LICENSE" }
    s.author             = { "afeng159" => "424425549@qq.com" }

    s.source       = { :git => "https://github.com/afeng159/podceshi.git", :tag => s.version }
    s.source_files  = "UserManage/*.{h,m}"
    s.framework  = 'Foundation'
    s.requires_arc = true
end