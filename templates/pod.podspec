Pod::Spec.new do |s|

  s.name         = "__ProjectName__"
  s.version      = "1"
  s.summary      = "__ProjectName__."
  s.description  = <<-DESC
                    this is __ProjectName__
                   DESC

  s.homepage     = "__HomePage__"
  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "JuneCheng" => "755038283@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "__HTTPSRepo__", :tag => s.version.to_s }
  s.source_files  = "__ProjectName__/__ProjectName__/**/*.{h,m,swift}"
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "BLMediator"

end
