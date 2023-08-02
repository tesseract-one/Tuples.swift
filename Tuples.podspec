Pod::Spec.new do |s|
  s.name             = 'Tuples'
  s.version          = '0.1.0'
  s.summary          = 'Generic Tuple types for Swift'

  s.description      = <<-DESC
  Generic Tuple structures and protocols which can be used as types.
                       DESC

  s.homepage         = 'https://github.com/tesseract-one/Tuples.swift'

  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'Tesseract Systems, Inc.' => 'info@tesseract.one' }
  s.source           = { :git => 'https://github.com/tesseract-one/Tuples.swift.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '13.0'
  s.watchos.deployment_target = '6.0'
  
  s.swift_version = '5.4'
  
  s.source_files = 'Sources/Tuples/**/*.swift'
  
  s.test_spec 'Tests' do |test_spec|
    test_spec.platforms = {:ios => '13.0', :osx => '10.15', :tvos => '13.0'}
    test_spec.source_files = 'Tests/TuplesTests/*.swift'
  end
end
