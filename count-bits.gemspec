
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "count/bits/version"

Gem::Specification.new do |spec|
  spec.name          = "count-bits"
  spec.version       = Count::Bits::VERSION
  spec.authors       = ["Matthew Eichler"]
  spec.email         = ["matthew.eichler@aventinesolutions.nl"]

  spec.summary       = %q{Ruby Coding Challenge #1}
  spec.description   = %q{Ruby Coding Challenge #1}
  spec.homepage      = "https://aventine.solutions"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = 'count_bits'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
