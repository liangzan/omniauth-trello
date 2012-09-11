# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-trello/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-trello"
  s.version     = Omniauth::Trello::VERSION
  s.authors     = ["Dunya Kirkali"]
  s.email       = ["dunyakirkali@gmail.com"]
  s.homepage    = "https://github.com/dunyakirkali/omniauth-trello"
  s.summary     = %q{Trello strategy for OmniAuth.}
  s.description = %q{Trello strategy for OmniAuth.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0'

  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'rack-test'
end