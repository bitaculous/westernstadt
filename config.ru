#!/usr/bin/env rackup

# This file is used by Rack-based servers to start the application.

require 'bundler/setup'

require 'bitaculous/westernstadt/engine'

engine = Bitaculous::Westernstadt::Engine.new

run engine