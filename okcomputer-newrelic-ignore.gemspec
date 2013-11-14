# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'okcomputer-newrelic-ignore/version'

Gem::Specification.new do |gem|
  gem.name          = "okcomputer-newrelic-ignore"
  gem.version       = Okcomputer::Newrelic::Ignore::VERSION
  gem.authors       = ["Jon Phenow"]
  gem.email         = ["jon.phenow@sportngin.com"]
  gem.description   = %q{If you use Ok Computer for uptime checks and pings, use this to avoid it affecting New Relic Stats too much}
  gem.summary       = %q{If you use Ok Computer for uptime checks and pings, use this to avoid it affecting New Relic Stats too much}
  gem.homepage      = "https://github.com/sportngin/okcomputer-newrelic-ignore"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.license       = "MIT"
  gem.require_paths = ["lib"]

  gem.add_dependency 'okcomputer'
  gem.add_dependency 'newrelic_rpm'
end
