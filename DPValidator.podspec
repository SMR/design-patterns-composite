Pod::Spec.new do |s|
  s.name             = "DPValidator"
  s.version          = "1.0.0"
  s.summary          = "Validator Component"
  s.description      = <<-DESC
                       DPValidator is a framework that showcases a real world use of the Composite Pattern.
                       DESC
  s.author           = 'Vinicius'
  s.source           = { :git => "git@github.com:vinicius-a-ro/design-patterns-composite.git", :tag => "RELEASE-#{s.version}", :submodules => true }

  s.requires_arc = true
  s.ios.deployment_target = '8.0'

  s.public_header_files = 'Output/DPValidator.framework/Headers/*.h'
  s.source_files = 'Output/DPValidator.framework/Headers/*.h'
  s.ios.vendored_frameworks = 'Output/DPValidator.framework'
  s.resource_bundles = {
    'DPValidator' => ['Output/DPValidator.framework/DPValidator.bundle']
  }

  #s.ios.frameworks = 'Foundation', 'UIKit'

end
