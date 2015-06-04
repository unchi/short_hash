# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'short_hash/version'

Gem::Specification.new do |spec|
  spec.name          = "short_hash"
  spec.version       = ShortHash::VERSION
  spec.authors       = ["unchi"]
  spec.email         = ["developer.japan@gmail.com"]

  spec.summary       = %q{generate short hash.}
  spec.description   = %q{generate short hash.}
  spec.homepage      = "http://unching-star.hatenablog.jp/"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
