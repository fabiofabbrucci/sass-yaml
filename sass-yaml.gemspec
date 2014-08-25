# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sass/yaml/version"

Gem::Specification.new do |s|
  s.name        = "sass-yaml"
  s.version     = Sass::Yaml::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Fabio Fabbrucci"]
  s.email       = ["fabio.fabbrucci@gmail.com"]
  s.homepage    = "http://fabiofabbrucci.github.com/"
  s.summary     = %q{Allows use of Yaml in Sass.}
  s.description = %q{Allows use of Yaml in Sass.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'sass', '>= 3.1'
end