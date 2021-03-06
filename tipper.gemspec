# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "tipper/version"

Gem::Specification.new do |spec|
  spec.name          = "tipper"
  spec.version       = Tipper::VERSION
  spec.authors       = ["Ruby's Dad"]
  spec.email         = ["markandtabithamorales@gmail.com"]

  spec.summary       = %q{A gem for generating tip values based on a number of inputs.}
  spec.homepage      = "https://github.com/RubysDad/tipper"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
end
