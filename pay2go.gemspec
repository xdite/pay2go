# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pay2go/version'

Gem::Specification.new do |spec|
  spec.name          = "pay2go"
  spec.version       = Pay2go::VERSION
  spec.authors       = ["xdite"]
  spec.email         = ["xuite.joke@gmail.com"]

  spec.summary       = %q{Pay2go Wrapper}
  spec.description   = %q{Pay2go Wrapper}
  spec.homepage      = "http://github.com/xdite/pay2go"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
