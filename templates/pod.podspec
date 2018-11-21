Pod::Spec.new do |s|

  s.name         = "__ProjectName__"
  #发版版本号，每更新一次代码就改变一次版本号
  s.version      = "1"
  s.summary      = "__ProjectName__."
  #描述，随便写 但是要比 s.summary 长度长
  s.description  = <<-DESC
                    this is __ProjectName__
                   DESC

  s.homepage     = "__HomePage__"
  # s.license      = "MIT (example)"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "JuneCheng" => "755038283@qq.com" }
  #一定要写上，不写的话，执行 pod lib lint 验证项目的时候会报找不到 UIKIT 等框架错误
  s.platform     = :ios, "8.0"
  #这里就是你 git 仓库的 https/ssh 地址了
  s.source       = { :git => "__HTTPSRepo__", :tag => s.version.to_s }
  #这里的文件夹下的内容就是这个 pods 被pod install 的时候会被下载下来的文件，不在这个文件夹，将不会被引用
  # 第2个__ProjectName__ 目录和.podspec 目录是平级的。
  # 你可以随便指定文件夹名称，只要这个文件夹是真实存在的
  # __ProjectName__/**/*.{h,m,swift}，表示 __ProjectName__ 文件夹及其文件夹下的所有.h,.m,.swift 文件。
  s.source_files  = "__ProjectName__/__ProjectName__/**/*.{h,m,swift}"
  #资源文件地址，下面的所有.png资源都被打包成 s.name.bundle
  # s.resource = ['__ProjectName__/__ProjectName__/**/Images/*.png','__ProjectName__/__ProjectName__/**/Sounds/*']
  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  #这个 pods 还依赖于其他哪些 pods
  # s.dependency "BLMediator"

end
