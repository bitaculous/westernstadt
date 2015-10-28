#!/usr/bin/env rackup

# This file is used by Rack-based servers to start the application.

require 'bundler/setup'

require 'bitaculous/booster/engine'

engine = Bitaculous::Booster::Engine.new
# engine.settings.set :root, Dir.pwd
# engine.settings.set :index_id, 'booster'
# engine.settings.set :redis_client, proc { Redis.new redis_client_configuration }
# engine.settings.set :redis_client_configuration, { host: '127.0.0.1' }

run engine