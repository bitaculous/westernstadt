require 'logger'
require 'sinatra/base'
require 'sinatra/custom_logger'
require 'sinatra/reloader'

module Bitaculous
  module Westernstadt # :nodoc:
    # = Engine
    #
    # The engine class of `Bitaculous::Westernstadt`, inherited from `Sinatra::Application`.
    class Engine < Sinatra::Application
      # === Settings ===

      set :root, File.expand_path('../../../../', __FILE__)

      set :public_folder, proc { File.join root, 'public' }

      set :version, Bitaculous::Westernstadt::VERSION

      # === Helpers ===

      helpers Sinatra::CustomLogger

      # === Configuration ===

      configure do
        logfile = File.open "#{root}/log/#{environment}.log", 'a'
        logger  = Logger.new logfile

        logger.level = Logger::DEBUG if development?

        set :logger, logger
      end

      configure :development do
        register Sinatra::Reloader
      end

      # === Routes ===

      get '/' do
        content_type 'text/html'

        'Westernstadt!'
      end
    end
  end
end