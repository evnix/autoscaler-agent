lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'metric/version'

Gem::Specification.new do |spec|
  spec.name          = "metric"
  spec.version       = '0.0.0'
  spec.authors       = Nishanth
  spec.email         = ["x15028551@student.ncirl.ie"]
  spec.description   = "A Ruby Gem with methods to find usage statistics on a Linux server such as CPU, Disk, Load, Bandwidth, Disk I/O, and Memory"
  spec.summary       = Statistics on a Linux server
  spec.homepage      = ""
  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.post_install_message = "* Linux version are covered for our test.\nThanks for installing!"
end
