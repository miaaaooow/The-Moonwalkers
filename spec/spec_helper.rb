# -*- encoding : utf-8 -*-
# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'rubygems'
require 'rspec/rails'
require 'rspec/autorun'
#require 'factory_girl_rails'
#require 'factory_girl'

#FactoryGirl.find_definitions

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

FactoryGirl.reload

TheMoonwalkers::Application.reload_routes!

RSpec.configure do |config|
  # ## Mock Framework
  config.mock_with :rspec

  config.use_transactional_fixtures = true
  
  config.include FactoryGirl::Syntax::Methods
  
  config.fail_fast = false
end
