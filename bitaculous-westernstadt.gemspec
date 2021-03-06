#!/usr/bin/env gem build

require File.expand_path '../lib/bitaculous/westernstadt/version', __FILE__

Gem::Specification.new 'bitaculous-westernstadt', Bitaculous::Westernstadt::VERSION do |spec|
  spec.summary          = 'Only the facade counts.'
  spec.author           = 'Maik Kempe'
  spec.email            = 'mkempe@bitaculous.com'
  spec.homepage         = 'https://bitaculous.github.io/westernstadt/'
  spec.license          = 'MIT'
  spec.files            = Dir['{lib,spec}/**/*', 'CHANGELOG.md', 'CONTRIBUTING.md', 'LICENSE', 'README.md']
  spec.extra_rdoc_files = ['CHANGELOG.md', 'CONTRIBUTING.md', 'LICENSE', 'README.md']

  spec.required_ruby_version     = '~> 2.1'
  spec.required_rubygems_version = '~> 2.4'

  spec.add_runtime_dependency 'sinatra',         '~> 1.4.6'
  spec.add_runtime_dependency 'sinatra-contrib', '~> 1.4.6'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake',    '~> 10.4.2'
  spec.add_development_dependency 'rspec',   '~> 3.3.0'
end