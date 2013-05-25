# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'generators/version'

Gem::Specification.new do |gem|
  gem.name          = "generators"
  gem.version       = Generators::VERSION
  gem.authors       = ["Tammer Saleh"]
  gem.email         = ["me@tammersaleh.com"]
  gem.description   = %q{A set of generators for my apps.}
  gem.summary       = %q{Words.}
  gem.homepage      = "http://tammersaleh.com"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
