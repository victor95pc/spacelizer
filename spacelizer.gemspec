# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spacelizer/version'

Gem::Specification.new do |spec|
  spec.name          = "spacelizer"
  spec.version       = Spacelizer::VERSION
  spec.authors       = ["victor95pc"]
  spec.email         = ["victorpalomocastro@gmail.com"]

  spec.summary       = 'Organize your Rails project with namespace, easy and fun'
  spec.description   = 'This tool can automatic organize your whole project with namespaces and you simply need to configure a YAML file, instead wasting your day copying and creating files.'
  spec.homepage      = 'https://github.com/victor95pc/spacelizer'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0.0"
  spec.add_dependency "rails", ">= 3.2.0"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
