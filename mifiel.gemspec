# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mifiel/version'

# rubocop:disable Metrics/BlockLength
Gem::Specification.new do |spec|
  spec.name          = 'mifiel'
  spec.version       = Mifiel::VERSION
  spec.authors       = ['Genaro Madrid']
  spec.email         = ['genmadrid@gmail.com']
  spec.summary       = 'Ruby SDK for mifiel.com.'
  spec.homepage      = 'https://www.mifiel.com'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '~> 2.1'

  spec.add_runtime_dependency 'rest-client'
  spec.add_runtime_dependency 'json'
  spec.add_runtime_dependency 'api-auth'
  if Gem::Version.new(RUBY_VERSION) > Gem::Version.new('2.2.2')
    spec.add_runtime_dependency 'activesupport'
  else
    spec.add_runtime_dependency 'activesupport', '~> 4.2.7'
  end
  spec.add_runtime_dependency 'flexirest'

  spec.add_development_dependency 'bundler',    '~> 1.6'
  spec.add_development_dependency 'rake',       '~> 10.0'
  spec.add_development_dependency 'rspec',      '~> 3.1',   '>= 3.1.7'
  spec.add_development_dependency 'pry',        '~> 0.10',  '>= 0.10.1'
  spec.add_development_dependency 'pry-byebug', '~> 3.3',   '>= 3.3.0'
  spec.add_development_dependency 'bump',       '~> 0.5',   '>= 0.5.3'
  spec.add_development_dependency 'webmock',    '~> 1.22',  '>= 1.22.2'
  spec.add_development_dependency 'sinatra',    '~> 1.4',   '>= 1.4.7'
  spec.add_development_dependency 'rubocop',    '~> 0.36'
  spec.add_development_dependency 'simplecov',  '~> 0.11'
end
