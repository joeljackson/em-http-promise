# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)
require 'em-http-promise/version'

Gem::Specification.new do |spec|
  spec.name          = "em-http-promise"
  spec.version       = EMHttpPromise::VERSION
  spec.authors       = ["Joel Jackson"]
  spec.email         = ["jackson.joel@gmail.com"]
  spec.description   = %q{A gem to wrap EM-HTTP-Request in the loving embrace of promises.}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/joeljackson/em-http-promise"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split("\n")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "em-http-request"
  spec.add_dependency "em-promise", "~>1.1.1"

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack"
  spec.add_development_dependency "mongrel", "~> 1.2.0.pre2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
