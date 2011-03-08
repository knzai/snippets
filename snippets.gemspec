# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "snippets"
  s.version     = '0.0.0'
  s.date        = '2011-03-07'
  
  #editable metadata
  s.authors     = ["Tim Connor"]
  s.email       = ["timocratic@gmail.com"]
  s.homepage    = "http://github.com/timocratic/snippets"
  s.summary     = "Rails engine for editing .md to generate HTML snippets"
  s.description = ""

  #depedencies
  #s.add_dependency('DEPNAME', [">= 1.1.0", "< 2.0.0"])
  s.add_development_dependency('rspec', [">= 2.0"])

  s.platform     = Gem::Platform::RUBY
  s.require_path = 'lib'

  #manifest and spec manifest
  s.files = Dir.glob("{bin,lib}/**/*") + %w{
    LICENSE
    README.md
  }
  s.test_files = Dir.glob("{spec,test}/**/*")
end