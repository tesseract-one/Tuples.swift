Pod::Spec.new do |s|
  s.name             = 'Tuples'
  s.version          = '999.99.9'
  s.summary          = 'Generic Tuple types for Swift'

  s.description      = <<-DESC
  Generic Tuple structures and protocols which can be used as types.
                       DESC

  s.homepage         = 'https://github.com/tesseract-one/Tuples.swift'

  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author           = { 'Tesseract Systems, Inc.' => 'info@tesseract.one' }
  s.source           = { :git => 'https://github.com/tesseract-one/Tuples.swift.git', :tag => s.version.to_s }

  s.swift_version    = '5.4'

  base_platforms     = { :ios => '11.0', :osx => '10.13', :tvos => '11.0' }
  s.platforms        = base_platforms.merge({ :watchos => '6.0' })
  
  s.source_files = 'Sources/Tuples/**/*.swift'
  
  s.test_spec 'Tests' do |ts|
    ts.platforms = base_platforms
    ts.source_files = 'Tests/TuplesTests/*.swift'
  end
end
