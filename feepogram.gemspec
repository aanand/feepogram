# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'feepogram/version'

Gem::Specification.new do |s|
  s.name = "feepogram"
  s.version = Feepogram::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Aanand Prasad"]
  s.email       = ["aanand.prasad@gmail.com"]
  s.homepage    = "http://github.com/aanand/feepogram"
  s.summary     = "A tiny DSL for non-trivial bloopsaphone projects"

  s.add_dependency "bloopsaphone"

  s.add_development_dependency "shoulda"

  s.files        = Dir.glob("lib/**/*") + %w(LICENSE README.rdoc)
  s.require_path = 'lib'
end
