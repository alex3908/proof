# frozen_string_literal: true

require_relative "lib/reservamos/kueski_pay/version"

Gem::Specification.new do |spec|
  spec.name = "reservamos-kueski_pay"
  spec.version = Reservamos::KueskiPay::VERSION
  spec.authors = ["alex3908"]
  spec.email = ["alejandro@coati.mx"]

  spec.summary = %q{Express kueski pay payments}
  spec.description = %q{Express kueski pay payments integration}
  spec.homepage = "https://github.com/reservamos/reservamos-kueski_pay"
  spec.required_ruby_version = ">= 2.6.0"

  #spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport'
  spec.add_dependency 'rest-client'
end
