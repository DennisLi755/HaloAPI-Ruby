#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/setup"
require "halo_msp_api"

# Configure the HaloMspApi gem
HaloMspApi.configure do |config|
  config.base_url = ENV["HALO_BASE_URL"] || "https://your-instance.haloitsm.com/api"
  config.client_id = ENV["HALO_CLIENT_ID"] || "your_client_id"
  config.client_secret = ENV["HALO_CLIENT_SECRET"] || "your_client_secret"
  config.tenant = ENV["HALO_TENANT"] # Optional
  config.timeout = 30
  config.retries = 3
end

# Get a client instance
client = HaloMspApi.client

begin
  puts "=== HaloApi Ruby Gem Example Usage ==="
  puts

  # Example 1: List tickets
  puts "1. Fetching tickets..."
  tickets = client.tickets.list(count: 5)
  puts "Found #{tickets.dig('tickets')&.length || 0} tickets"
  puts

  # Example 2: Get current user
  puts "2. Fetching current user..."
  current_user = client.users.me
  puts "Current user: #{current_user.dig('name') || 'Unknown'}"
  puts

  # Example 3: List clients
  puts "3. Fetching clients..."
  clients = client.clients.list(count: 5)
  puts "Found #{clients.dig('clients')&.length || 0} clients"
  puts

  # Example 4: List assets
  puts "4. Fetching assets..."
  assets = client.assets.list(count: 5)
  puts "Found #{assets.dig('assets')&.length || 0} assets"
  puts

  # Example 5: List invoices
  puts "5. Fetching invoices..."
  invoices = client.invoices.list(count: 5)
  puts "Found #{invoices.dig('invoices')&.length || 0} invoices"
  puts

  # Example 6: Get reports
  puts "6. Fetching reports..."
  reports = client.reports.list(count: 5)
  puts "Found #{reports.dig('reports')&.length || 0} reports"
  puts

  puts "=== Example completed successfully! ==="

rescue HaloMspApi::AuthenticationError => e
  puts "Authentication failed: #{e.message}"
  puts "Please check your client_id and client_secret"
rescue HaloMspApi::AuthorizationError => e
  puts "Authorization failed: #{e.message}"
  puts "Please check your permissions"
rescue HaloMspApi::APIError => e
  puts "API Error: #{e.message}"
  puts "Status Code: #{e.status_code}" if e.respond_to?(:status_code)
rescue StandardError => e
  puts "Unexpected error: #{e.message}"
  puts e.backtrace.first(5)
end
