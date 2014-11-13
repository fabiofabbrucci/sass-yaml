# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "sass-yaml"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Fabio Fabbrucci"]
  s.email       = ["fabio.fabbrucci@gmail.com"]
  s.homepage    = "https://github.com/fabiofabbrucci/sass-yaml"
  s.summary     = %q{Allows use of Yaml in Sass.}
  s.description = %q{With this GEM you can easly query a Yaml file from your SASS.}
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- test/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'sass', '>= 3.1'
end