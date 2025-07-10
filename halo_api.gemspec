# frozen_string_literal: true

require_relative "lib/halo_api/version"

Gem::Specification.new do |spec|
  spec.name = "halo_api"
  spec.version = HaloApi::VERSION
  spec.authors = ["Your Name"]
  spec.email = ["your.email@example.com"]

  spec.summary = "Ruby API wrapper for Halo ITSM/PSA/CRM REST API"
  spec.description = "A comprehensive Ruby gem for interacting with the Halo ITSM, HaloPSA and HaloCRM REST API"
  spec.homepage = "https://github.com/yourusername/halo_api"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/yourusername/halo_api"
  spec.metadata["changelog_uri"] = "https://github.com/yourusername/halo_api/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Runtime dependencies
  spec.add_dependency "faraday", "~> 2.0"
  spec.add_dependency "faraday-retry", "~> 2.0"
  spec.add_dependency "json", "~> 2.0"

  # Development dependencies
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.0"
  spec.add_development_dependency "yard", "~> 0.9"
  spec.add_development_dependency "webmock", "~> 3.0"
  spec.add_development_dependency "vcr", "~> 6.0"
end
