# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "snippets/version"

Gem::Specification.new do |s|
  s.name        = "snippets"
  s.version     = Snippets::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tim Connor"]
  s.email       = ["timocratic@gmail.com"]
  s.homepage    = "http://github.com/timocratic/snippets"
  s.summary     = %q{Rails engine for editing .md to generate HTML snippets}
  s.description = %q{Not a full-fledged CMS, just a simple way to edit content
 in a Rails app so the developers don't have to get involved in editing.'}

  s.rubyforge_project = "snippets"

  s.add_dependency('activerecord', "> 3.0.0")
  s.add_dependency('sinatra')
  
  s.add_development_dependency('rspec', ">= 2.0")
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('rack-test')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
