# -*- encoding: utf-8 -*-
require File.expand_path('../lib/mogreet/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Andrew Hage"]
  gem.email         = ["andrew@okvenue.com"]
  gem.description   = %q{A ruby wrapper for the Mogreet API}
  gem.summary       = %q{A simple ruby interface to the api at https://api.mogreet.com}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "mogreet"
  gem.require_paths = ["lib"]
  gem.version       = Mogreet::VERSION
end
