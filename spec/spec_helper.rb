# frozen_string_literal: true

require "bundler/setup"
require "halo_api"
require "webmock/rspec"
require "vcr"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # Configure WebMock to allow localhost connections for testing
  WebMock.disable_net_connect!(allow_localhost: true)
end

# Configure VCR for recording HTTP interactions
VCR.configure do |config|
  config.cassette_library_dir = "spec/vcr_cassettes"
  config.hook_into :webmock
  config.configure_rspec_metadata!
  config.default_cassette_options = {
    record: :once,
    match_requests_on: [:method, :uri, :body]
  }
  
  # Filter sensitive data
  config.filter_sensitive_data("<CLIENT_ID>") { ENV["HALO_CLIENT_ID"] }
  config.filter_sensitive_data("<CLIENT_SECRET>") { ENV["HALO_CLIENT_SECRET"] }
  config.filter_sensitive_data("<BASE_URL>") { ENV["HALO_BASE_URL"] }
end
