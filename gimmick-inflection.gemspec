# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gimmick/inflection/version'

Gem::Specification.new do |spec|
  spec.name          = "gimmick-inflection"
  spec.version       = Gimmick::Inflection::VERSION
  spec.authors       = ["masahiro yanai"]
  spec.email         = ["yanap1214@gmail.com"]
  spec.description   = %q{gimmick ruby gem. change to end of a sentence.}
  spec.summary       = %q{I want to change to various end of a sentence.}
  spec.homepage      = "https://github.com/yanap/gimmick-inflection"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
