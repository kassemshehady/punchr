# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'punchr/version'

Gem::Specification.new do |s|
  s.name        = "punchr"
  s.version     = Punchr::VERSION
  s.authors     = ["David Czarnecki"]
  s.email       = ["me@davidczarnecki.com"]
  s.homepage    = "https://github.com/punchfork/punchr"
  s.summary     = "Ruby gem for interacting with the Punchfork API"
  s.description = "Ruby gem for interacting with the Punchfork API"

  s.rubyforge_project = "punchr"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('typhoeus')

  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
  s.add_development_dependency('vcr')
  s.add_development_dependency('multi_json')
end
