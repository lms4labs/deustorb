require 'rspec'
require "bundler/setup"
require 'deustorb'

# Fuck you Bundler
Bundler.require.each{|dp| require dp.name }

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

def login_response
  "{\"result\": {\"id\": \"some_id\"}, \"is_exception\": false}"
end

def failed_login_response
  "{\"message\": \"Invalid username or password!\", \"code\": \"JSON:Client.InvalidCredentials\", \"is_exception\": true}"
end

def experiments_list
  "{\"result\": [{\"priority\": 5, \"experiment\": {\"category\": {\"name\": \"PIC experiments\"}, \"start_date\": \"2009-12-21T00:00:00\", \"id\": 11, \"end_date\": \"2019-12-21T00:00:00\", \"name\": \"ud-logic\"}, \"time_allowed\": 150.0, \"initialization_in_accounting\": \"1\"}, {\"priority\": 5, \"experiment\": {\"category\": {\"name\": \"Robot experiments\"}, \"start_date\": \"2011-05-06T18:36:40\", \"id\": 24, \"end_date\": \"2021-05-06T18:36:40\", \"name\": \"robot-movement\"}, \"time_allowed\": 150.0, \"initialization_in_accounting\": \"1\"}, {\"priority\": 5, \"experiment\": {\"category\": {\"name\": \"Visir experiments\"}, \"start_date\": \"2012-07-02T21:57:18\", \"id\": 43, \"end_date\": \"2024-07-02T21:57:18\", \"name\": \"visir-fed-balance\"}, \"time_allowed\": 600.0, \"initialization_in_accounting\": \"1\"}], \"is_exception\": false}"
end