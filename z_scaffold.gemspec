# frozen_string_literal: true

require_relative "lib/z_scaffold/version"

Gem::Specification.new do |spec|
  spec.name = "z_scaffold"
  spec.version = ZScaffold::VERSION
  spec.authors = ["Steve Brown"]
  spec.email = ["steve@zergsoft.com"]

  spec.summary = "Gem to wrap scaffold templates and inject them into an app."
  spec.description = "Gem to wrap scaffold templates and inject them into an app."
  spec.homepage    = "https://github.com/jpgeek/z_scaffold"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage 
  spec.metadata["changelog_uri"] = spec.homepage

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

  spec.add_dependency "rails", ">= 7.0.3.1"
  spec.add_dependency 'bootstrap_icons_rails'

  # spec.add_dependency "example-gem", "~> 1.0"
  # spec.add_development_dependency "example-gem", [">= 0"]

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
