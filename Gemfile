#!/usr/bin/env bundle

source 'https://rubygems.org'

# Declare the gem's dependencies in `bitaculous-westernstadt.gemspec`. Bundler will treat runtime dependencies like base
# dependencies, and development dependencies will be added by default to the `:development` group.
gemspec

# Declare any dependencies that are still in development here instead of in the gemspec. Remember to move these
# dependencies to the Gemspec before releasing the Gem.

# === Rack ===

gem 'thin', '~> 1.6.3'

# === Development ===

group :development do
  gem 'guard-rspec', '~> 4.6.4', require: false
end

# === Test ===

group :test do
  # --- Code Analysis ---

  gem 'rubocop',       '~> 0.35.0', require: false
  gem 'rubocop-rspec', '~> 1.3.1',  require: false

  # --- Code Coverage ---

  gem 'simplecov', '~> 0.10.0', require: false

  gem 'codeclimate-test-reporter', '~> 0.4.8', require: false
end

# === Misc ===

group :misc do
  # --- Formatter ---

  gem 'nyan-cat-formatter', '~> 0.11', require: false

  # --- OS X ---

  gem 'growl', '~> 1.0.3', require: RUBY_PLATFORM.include?('darwin') && 'growl'

  gem 'rb-fsevent', '~> 0.9.6', require: RUBY_PLATFORM.include?('darwin') && 'rb-fsevent'
end