# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gks_geo_ip/version'

Gem::Specification.new do |spec|
  spec.name          = "gks_geo_ip"
  spec.version       = GksGeoIp::VERSION
  spec.authors       = ["John Chen"]
  spec.email         = ["cgg5207@sina.com"]
  spec.summary       = %q{gks geo ip}
  spec.description   = %q{使用淘宝的ip库！}
  spec.homepage      = "https://github.com/gkscc/gks_geo_ip"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "json"
end
