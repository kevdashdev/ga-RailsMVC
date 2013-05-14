# Load libraries required on boot
require File.expand_path '../boot', __FILE__

# the action controller that serves the requests
require 'action_controller/railtie'

# Libraries required for the application to run
# include :default and current environment libraries
Bundler.require :default, Rails.env

# app itself
module RailsMVC
  class Application < Rails::Application
    # Configure the default encoding used in templates for Ruby 1.9
    config.encoding = 'utf-8'
  end
end

# enable the asset pipeline
config.assets.enabled = true
