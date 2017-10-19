# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "phone_area/version"

Gem::Specification.new do |spec|
  spec.name          = "phone_area"
  spec.version       = PhoneArea::VERSION
  spec.authors       = ["luolinae86"]
  spec.email         = ["luolinae86@gmail.com"]

  spec.summary       = %q{根据（中国）用户手机号，查询该手机号属的省份，城市，以及属于是联通，移动或者电信}
  spec.description   = %q{根据（中国）用户手机号，查询该手机号属于省份，城市，以及属于是联通，移动或者电信}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rest-client","~> 2.0"
  spec.add_development_dependency "json","~> 1.8"
end
