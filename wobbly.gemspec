# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wobbly/version'

Gem::Specification.new do |spec|
  spec.name          = "wobbly"
  spec.version       = Wobbly::VERSION
  spec.authors       = ["Eric Roberts"]
  spec.email         = ["ericroberts@gmail.com"]
  spec.summary       = "Why be constant when you can be wobbly?"
  spec.description   = "Ever wanted to just get or define a constant (or chain of constants)? Now you can."
  spec.homepage      = "https://github.com/ericroberts/wobbly"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
