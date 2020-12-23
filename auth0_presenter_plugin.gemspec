lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "auth0_presenter_plugin"
  spec.version       = '0.0.1'
  spec.authors       = ["rx"]
  spec.email         = ["rx@voomify.com"]

  spec.summary       = %q{auth0 presenter plugin.}
  spec.homepage      = 'http://github.com/rx/auth0_presenters_plugin'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
