# frozen_string_literal: true

require_relative "lib/RandomRoller/version"

Gem::Specification.new do |spec|
  spec.name = "RandomRoller"
  spec.version = RandomRoller::VERSION
  spec.authors = ["Abraham V Rodriguez"]
  spec.email = ["pqavrr835@gmail.com"]

  spec.summary = "RandomRoller has a number of methods for games that are based on randomness. It has a coin flipper, choosing a card from a deck, dice roller, and gives you lotto numbers."
  spec.homepage = "https://github.com/avrrodriguez/RandomRoller-ruby.git"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/avrrodriguez/RandomRoller-ruby.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/avrrodriguez/RandomRoller-ruby.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
