# -*- coding: utf-8 -*-
$:.unshift(File.expand_path("lib", File.dirname(__FILE__)))
require 'mosql/version'

Gem::Specification.new do |gem|
  gem.authors       = ["Nelson Elhage"]
  gem.email         = ["nelhage@stripe.com"]
  gem.description   = %q{A library for streaming MongoDB to SQL}
  gem.summary       = %q{MongoDB -> SQL streaming bridge}
  gem.homepage      = "https://github.com/stripe/mosql"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mosql"
  gem.require_paths = ["lib"]
  gem.version       = MoSQL::VERSION
  gem.licenses      = ["MIT"]

  gem.add_runtime_dependency "sequel", "~> 5.9"
  gem.add_runtime_dependency "pg", "~> 1.0"
  gem.add_runtime_dependency "rake", "~> 12.3"
  gem.add_runtime_dependency "log4r", "~> 1.1"
  gem.add_runtime_dependency "json", "~> 2.1"

  gem.add_runtime_dependency "mongoriver", "0.4"

  gem.add_runtime_dependency "mongo", "~> 1.10"
  gem.add_runtime_dependency "bson", "~> 1.10"
  gem.add_runtime_dependency "bson_ext", "~> 1.10"

  gem.add_development_dependency "minitest", "~> 5.11"
  gem.add_development_dependency "mocha", "~> 1.5"
end
