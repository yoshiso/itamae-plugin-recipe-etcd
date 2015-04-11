# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itamae/plugin/recipe/etcd/version'

Gem::Specification.new do |spec|
  spec.name          = "itamae-plugin-recipe-etcd"
  spec.version       = Itamae::Plugin::Recipe::Etcd::VERSION
  spec.authors       = ["yss44"]
  spec.email         = ["nya060@gmail.com"]

  spec.summary       = %q{itamae plugin for etcd 2.x}
  spec.description   = %q{itamae plugin for etcd 2.x}
  spec.homepage      = "https://github.com/yss44/itamae-plugin-recipe-etcd"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
