

Pod::Spec.new do |spec|



  spec.name         = "FNKAnalys"
  spec.version      = "1.0.3"
  spec.summary      = "A short description of FNKAnalys."

 
  spec.description  = <<-DESC
                       https://github.com/frankKiwi/UMAnalys.git
                   DESC

  spec.homepage     = "https://github.com/frankKiwi/UMAnalys.git"


 

  spec.license      = "MIT"


  spec.author             = { "fanrenFRank" => "1778907544@qq.com" }
  
  spec.platform     = :ios, "8.0"


  spec.source       = { :git => "https://github.com/frankKiwi/UMAnalys.git", :tag => "#{spec.version}" }
 
  #spec.source_files  = "UMSocial/**/*.{h,m}"
  spec.vendored_frameworks = "UMSocial/**/*.framework"
  spec.public_header_files = "UMSocial/**/*.framework/**/Headers/**/*.h"


  spec.resources = "UMSocial/**/UMCommonLog.bundle"



  spec.frameworks = "UIKit", "Foundation"

  spec.requires_arc = true


end
