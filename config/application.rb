require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Patogenapp
  class Application < Rails::Application

    config.to_prepare do
      Devise::SessionsController.layout "layoutvideo"
      Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application" : "layoutvideo" }
      Devise::ConfirmationsController.layout "layoutvideo"
      Devise::UnlocksController.layout "layoutvideo"
      Devise::PasswordsController.layout "layoutvideo"
    end

    #if you place the api folder on lib/ or controllers/ do not need this two lines below
    config.paths.add File.join('app', 'api'), glob: File.join('**', '*.rb')

    config.autoload_paths += Dir[Rails.root.join('app', 'api' , '*')]
    config.autoload_paths += Dir[Rails.root.join('app', 'api' , '*', '*')]

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

require "#{Rails.root}/lib/warden_strategies"
