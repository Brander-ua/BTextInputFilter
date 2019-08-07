Pod::Spec.new do |s|
  s.name             = 'BTextInputFilter'
  s.version          = '0.1.4'
  s.summary          = 'Text filter'

  s.homepage         = 'https://github.com/Brander-ua/BTextInputFilter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'luximetr' => 'alexandr.orlov@brander.ua' }
  s.source           = { :git => 'https://github.com/Brander-ua/BTextInputFilter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  s.swift_versions = '4.0'

  s.source_files = 'TextInputFilter/Source/**/*'
end
