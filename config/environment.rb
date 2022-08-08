ENV["RACK_ENV"] ||= "development"

# Allow binding.pry to be called anywhere in the app
require 'pry'
require 'bundler/setup'
Bundler.require(:default, ENV["RACK_ENV"])

require_all 'app/models'
