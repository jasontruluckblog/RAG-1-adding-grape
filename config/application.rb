$:.unshift File.dirname(__FILE__)

require 'boot'

env = ENV['RACK_ENV'] || "development"

Bundler.require :default, env

# Load specific environments
specific_environment = "../environments/#{env}.rb"
require specific_environment if File.exists? specific_environment

require File.expand_path('../../app/api.rb', __FILE__)