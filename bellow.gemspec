# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bellow/version'

Gem::Specification.new do |spec|
  spec.name          = "bellow"
  spec.version       = Bellow::VERSION
  spec.authors       = ["Keyvan Fatehi"]
  spec.email         = ["keyvanfatehi@gmail.com"]
  spec.description   = %q{Wrap Prowl and NotifyMyAndroid into a single basic API to notify lists of users}
  spec.summary       = %q{Wraps Prowl and NotifyMyAndroid APIs to notify lists}
  spec.homepage      = "https://github.com/keyvanfatehi/bellow"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_runtime_dependency "ruby-notify-my-android", '~> 0.4.3'
  spec.add_runtime_dependency "prowly"
end
