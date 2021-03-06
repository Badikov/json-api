require File.expand_path('../boot', __FILE__)

require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"

Bundler.setup(:default, Rails.env)

require_relative "database_connection"

require "pry"
require "rack/cors"

module JsonRails
  class Application < Rails::Application
    config.i18n.enforce_available_locales = true
    config.console = Pry

    config.middleware.use Rack::Cors do
      allow do
        origins "*"
        resource "*", :headers => :any, :methods => [:get, :post, :delete, :put, :options]
      end
    end
  end
end
