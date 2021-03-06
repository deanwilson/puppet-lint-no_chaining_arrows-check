Gem::Specification.new do |spec|
  spec.name        = 'puppet-lint-no_chaining_arrows-check'
  spec.version     = '0.1.0'
  spec.homepage    = 'https://github.com/deanwilson/puppet-lint-no_chaining_arrows-check'
  spec.license     = 'MIT'
  spec.author      = 'Dean Wilson'
  spec.email       = 'dean.wilson@gmail.com'
  spec.files       = Dir[
    'README.md',
    'LICENSE',
    'lib/**/*',
    'spec/**/*',
  ]
  spec.test_files  = Dir['spec/**/*']
  spec.summary     = 'puppet-lint no_chaining_arrows check'
  spec.description = <<-DESCRIPTION
    Extends puppet-lint to issue warnings if any chaining arrows
    ('->', '~>', '<-', '<~') are found.
  DESCRIPTION

  spec.required_ruby_version = '>= 2.5.0'

  spec.add_dependency             'puppet-lint', '>= 1.1', '< 3.0'

  spec.add_development_dependency 'rake', '~> 13.0.0'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
  spec.add_development_dependency 'rspec-collection_matchers', '~> 1.0'
  spec.add_development_dependency 'rspec-its', '~> 1.0'
  spec.add_development_dependency 'rspec-json_expectations', '~> 2.2'
  spec.add_development_dependency 'rubocop', '~> 0.89.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.43.0'
  spec.add_development_dependency 'simplecov', '~> 0.19.0'
end
