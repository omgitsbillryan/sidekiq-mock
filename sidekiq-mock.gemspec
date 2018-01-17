
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sidekiq/mock/version"

Gem::Specification.new do |spec|
  spec.name          = "sidekiq-mock"
  spec.version       = Sidekiq::Mock::VERSION
  spec.authors       = ["omgitsbillryan"]
  spec.email         = ["bill.ryan@adhocteam.us"]

  spec.summary       = %q{Mocks the enterprise features of sidekiq-ent and sidekiq-pro.}
  spec.description   = %q{For those using sidekiq-ent in production but use sidekiq for development, this gem may act as a mock for sidekiq-ent so that bundler doesn't fail to download sidekiq-ent & sidekiq-pro (which require license keys).}
  spec.homepage      = "https://github.com/department-of-veterans-affairs/sidekiq-mock"
  spec.license       = "MIT"

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

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
